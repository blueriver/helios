<!---
			This file is part of the Helios Mura CMS Theme
--->
<cfoutput>

	<!-- Banner -->
		<cfif Len($.content('homeBannerTitle')) OR Len($.setDynamicContent($.content('homeBannerContent')))>
			<div id="banner">

				<!-- Banner Title -->
					<cfif Len($.content('homeBannerTitle'))>
						<h2>
							#$.renderEditableAttribute(attribute='homeBannerTitle', label='Banner Title')#
						</h2>
					</cfif>
				<!-- // Banner Title // -->

				<!-- Banner Content -->
					<cfif Len($.setDynamicContent($.content('homeBannerContent')))>
						<span class="byline">
							#$.renderEditableAttribute(
								attribute='homeBannerContent'
								, label='Banner Content'
								, type='htmlEditor'
							)#
						</span>
					</cfif>
				<!-- // Banner Content // -->

			</div>
		</cfif>
	<!-- // Banner // -->


	<!-- Carousel -->
		<cfif YesNoFormat($.content('homeShowCarousel'))>
			#$.dspThemeInclude('content_types/page_home/includes/carousel.cfm')#
		</cfif>
	<!-- // Carousel // -->

	<!-- home body wrapper -->
		<div class="wrapper style2">

			<!--- Breadcrumbs --->
			<!--- <nav>#$.dspCrumbListLinks(separator='&nbsp;/&nbsp;&nbsp;')#</nav> --->

			<!--- Main --->
				<article id="main" class="container special">

					<!--- HomeBodyImage --->
						<cfset img = $.getURLForImage(fileid=$.content('homeBodyImage'), size='large') />
						<cfif Len(img)>
							<span class="image featured">
								<img src="#img#" alt="#HTMLEditFormat($.content('title'))#" />
							</span>
						</cfif>

					<!--- Title + Subtitle --->
						<header>
							<h2>#$.renderEditableAttribute(attribute='homeBodyTitle', label='Body Title')#</h2>
							<cfif Len($.content('homeBodySubtitle'))>
								<span class="byline">
									#$.renderEditableAttribute(attribute='homeBodySubtitle', label='Body Subtitle')#
								</span>
							</cfif>
						</header>

					<!--- Main Content --->
						<!---
							For information on dspBody(), visit:
							http://docs.getmura.com/v6/front-end/template-variables/document-body/
						--->
						#$.dspBody(bodyAttribute='homeBodyContent')#

						<!--- Main Content Display Objects --->
							<cfif Len($.dspObjects(2))>
								<hr />
								<div class="row">
									<div class="12u skel-cell-important">
										#$.dspObjects(2)#
									</div>
								</div>
							</cfif>

				</article>
			<!--- // Main // --->

		</div>
	<!-- // home body wrapper // -->
</cfoutput>
