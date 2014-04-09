<!---
		This file is part of the Helios Mura CMS Theme
--->
<cfoutput>
		
		<header>
			<h2 class="fa #$.component('rssFeedIcon')# circled solo">
				<cfif Len($.component('rssFeedHeading'))>
					<span>
						#HTMLEditFormat($.setDynamicContent($.component('rssFeedHeading')))#
					</span>
				</cfif>
			</h2>
		</header>

		<cftry>
			<cffeed source="#$.component('rssFeedLink')#" query="rs" />
			<cfcatch>
				<cfset rs = QueryNew('') />
			</cfcatch>
		</cftry>
			
		<cfset it = $.getBean('beanIterator').setQuery(rs) />
		<cfset maxItems = Val($.component('rssFeedMaxItems')) />

		<cfif it.hasNext()>
			<ul class="divided">
				<cfloop condition="it.hasNext()">
					<cfset item = it.next() />
					<li>

						<article>

							<!--- Title --->
							<#$.getHeaderTag('subHead2')#>
								<a href="#item.getValue('rsslink')#">
									#HTMLEditFormat(item.getValue('title'))#
								</a>
							</#$.getHeaderTag('subHead2')#>

							<!--- Date --->
							<cfset theDate = $.convertFeedDateTime(item.getValue('publisheddate')) />
							<cfif YesNoFormat($.component('rssFeedShowPubDate')) and IsDate(theDate)>
								<span class="timestamp">
									#LSDateFormat(theDate)#
								</span>
							</cfif>

							<!--- Summary --->
							<cfif YesNoFormat($.component('rssFeedShowSummary'))>
								#item.getValue('content')#
							</cfif>

						</article>

					</li>

					<cfif it.getRecordIndex() eq maxItems>
						<cfbreak />
					</cfif>
				</cfloop>
			</ul>
		<cfelse>
			#$.dspNoItemsNotice()#
		</cfif>

</cfoutput>