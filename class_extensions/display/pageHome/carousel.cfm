<!---
		This file is part of the Helios Mura CMS Theme
--->
<cfoutput>
	<cfsilent>
		<cfscript>
			feed = $.getBean('feed').loadBy(name=$.content('homeCarouselFeed'));
			it = feed.getIterator();
		</cfscript>
	</cfsilent>
	<div class="carousel">

		<!-- Reel -->
			<div class="reel">

				<cfif feed.getIsNew()>
					#$.dspNoFeedNotice()#
				<cfelseif it.hasNext()>

					<!--- Iterator Output --->
						<cfloop condition="#it.hasNext()#">
							<cfsilent>
								<cfscript>
									item = it.next();
									img = $.getURLForImage(fileid=item.getValue('fileid'), size='carouselimage'); // Image Size: 336x234
								</cfscript>
							</cfsilent>
							<article>
								<!--- Primary Associated Image --->
								<cfif Len(img)> 
									<a href="#item.getValue('url')#" class="image featured"><img src="#img#" alt="#HTMLEditFormat(item.getValue('menuTitle'))#" /></a>
								</cfif>

								<!--- Menu Title --->
								<header>
									<h3><a href="#item.getValue('url')#">#HTMLEditFormat(item.getValue('menuTitle'))#</a></h3>
								</header>

								<!--- Summary --->
								#$.setDynamicContent(item.getValue('summary'))#						
							</article>
						</cfloop>
					<!--- // Iterator Output // --->

				<cfelse>
					#$.dspNoItemsNotice()#
				</cfif>

			</div>
		<!-- // Reel // -->

	</div>
</cfoutput>