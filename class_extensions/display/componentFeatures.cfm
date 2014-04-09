<!---
			This file is part of the Helios Mura CMS Theme
--->
<cfsilent>
	<cfscript>
		feed = variables.$.getBean('feed')
			.loadBy(name=$.component('compFeaturesFeed'))
			.setMaxItems(Val($.component('compFeaturesMaxItems')))
			.setNextN(Val($.component('compFeaturesMaxItems')));
		it = feed.getIterator();
		totalItems = it.getRecordcount();
		itemsPerRow = Val($.component('compFeaturesColumnCount'));
		itemsPerColumn = Round(totalItems/itemsPerRow);
		columnClass = Round(12/val($.component('compFeaturesColumnCount'))) & 'u';
	</cfscript>
</cfsilent>
<cfoutput>

	<!-- Features Heading -->
		<cfif Len($.component('compFeaturesHeading')) OR Len($.component('compFeaturesSubheading'))>
			<header>
				<cfif Len($.component('compFeaturesHeading'))>
					<h2>#HTMLEditFormat($.component('compFeaturesHeading'))#</h2>
				</cfif>
				<cfif Len($.component('compFeaturesSubheading'))>
					<span class="byline">#HTMLEditFormat($.component('compFeaturesSubheading'))#</span>
				</cfif>
			</header>
		</cfif>
	<!-- // Features Heading // -->

	<cfif feed.getIsNew()>
		#$.dspNoFeedNotice()#
	<cfelseif !totalItems>
		#$.dspNoItemsNotice()#
	<cfelse>
		<cfloop condition="it.hasNext()">
			<!--- Start Row --->
			<cfif not it.currentIndex() mod itemsPerRow>
				<div class="row">
			</cfif>

					<!--- THE ITEM --->
					<cfset item = it.next() />
					<article class="#columnClass# special">

						<!--- Primary Image --->
							<cfset img = variables.$.getURLForImage(fileid=item.getValue('fileid'), size='featureimage') />
							<cfif Len(img)>
								<a href="#item.getValue('url')#" class="image featured">
									<img src="#img#" alt="#HTMLEditFormat(item.getValue('menuTitle'))#" />
								</a>
							</cfif>

						<!--- Title --->
							<header>
								<h3><a href="#item.getValue('url')#">#HTMLEditFormat(item.getValue('menuTitle'))#</a></h3>
							</header>
						
						<!--- Summary --->
							<cfif YesNoFormat($.component('compFeaturesShowSummary'))>
								#$.setDynamicContent(item.getValue('summary'))#
							</cfif>
					</article>

			<cfif not it.currentIndex() mod itemsPerRow or it.currentIndex() eq totalItems>
				</div><!-- @End Row -->
			</cfif>
		</cfloop>
	</cfif>

</cfoutput>