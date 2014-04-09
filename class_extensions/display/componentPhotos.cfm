<!---
			This file is part of the Helios Mura CMS Theme
--->
<cfsilent>
	<cfscript>
		feed = variables.$.getBean('feed')
			.loadBy(name=$.component('compPhotosFeed'))
			.setMaxItems(Val($.component('compPhotosMaxItems')))
			.setNextN(Val($.component('compPhotosMaxItems')));
		it = feed.getIterator();
		totalItems = it.getRecordcount();
		itemsPerRow = Val($.component('compPhotosColumnCount'));
		itemsPerColumn = Round(totalItems/itemsPerRow);
		columnClass = Round(12/val($.component('compPhotosColumnCount'))) & 'u';
	</cfscript>
</cfsilent>
<cfoutput>

	<header>
		<h2 class="fa #$.component('compPhotosIcon')# circled solo">
			<cfif Len($.component('compPhotosHeading'))>
				<span>
					#HTMLEditFormat($.setDynamicContent($.component('compPhotosHeading')))#
				</span>
			</cfif>
		</h2>
	</header>

	<cfif feed.getIsNew()>
		#$.dspNoFeedNotice()#
	<cfelseif !totalItems>
		#$.dspNoItemsNotice()#
	<cfelse>
		<cfloop condition="it.hasNext()">
			<!--- Start Row --->
			<cfif not it.currentIndex() mod itemsPerRow>
				<div class="row quarter no-collapse">
			</cfif>

					<!--- THE ITEM --->
					<cfset item = it.next() />
					<div class="#columnClass#">
						<!--- Primary Image --->
							<cfset img = variables.$.getURLForImage(fileid=item.getValue('fileid'), size='carouselimage') />
							<cfif Len(img)>
								<a href="#item.getValue('url')#" class="image full">
									<img src="#img#" alt="#HTMLEditFormat(item.getValue('menuTitle'))#" />
								</a>
							</cfif>
					</div>

			<cfif not it.currentIndex() mod itemsPerRow or it.currentIndex() eq totalItems>
				</div><!-- @End Row -->
			</cfif>
		</cfloop>
	</cfif>

</cfoutput>