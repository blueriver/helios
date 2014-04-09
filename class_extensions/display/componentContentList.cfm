<!---
		This file is part of the Helios Mura CMS Theme
--->
<cfoutput>
	<cfsilent>
		<cfscript>
			feed = $.getBean('feed').loadBy(name=$.component('contentListFeed')).setMaxItems($.component('contentListMaxItems'));
			it = feed.getIterator();
		</cfscript>
	</cfsilent>

	<header>
		<h2 class="fa #$.component('contentListIcon')# circled solo">
			<cfif Len($.component('contentListHeading'))>
				<span>
					#HTMLEditFormat($.component('contentListHeading'))#
				</span>
			</cfif>
		</h2>
	</header>

	<cfif feed.getIsNew()>
		#$.dspNoFeedNotice()#
	<cfelseif it.hasNext()>
		<ul class="divided">
			<cfloop condition="#it.hasNext()#">
				<cfset item = it.next() />
				<li>
					<article class="post stub">
						<header>
							<h3>
								<a href="#item.getValue('url')#">#HTMLEditFormat(item.getValue('menutitle'))#</a>
							</h3>
						</header>

						<cfif YesNoFormat($.component('contentListShowCredits'))>
							<span class="credits">#HTMLEditFormat(item.getValue('credits'))#</span>
						</cfif>
						
						<cfif YesNoFormat($.component('contentListShowDate'))>
							<span class="timestamp">#LSDateFormat(item.getValue('releasedate'), 'long')#</span>
						</cfif>

						<cfif YesNoFormat($.component('contentListShowSummary'))>
							<div class="list-summary">
								#$.setDynamicContent(item.getSummary())#
							</div>
						</cfif>
					</article>
				</li>
			</cfloop>
		</ul>
	<cfelse>
		#$.dspNoItemsNotice()#
	</cfif>

</cfoutput>