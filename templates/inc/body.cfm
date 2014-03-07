<!---
			This file is part of the Helios Mura CMS Theme
--->
<cfoutput>
	<!--- Breadcrumbs --->
	<!--- <nav>#$.dspCrumbListLinks(separator='&nbsp;/&nbsp;&nbsp;')#</nav> --->

	<!--- Main --->
		<article id="main" <cfif !Len($.content('filename'))>class="container special"</cfif>>

			<!--- One home page, image is above the header --->
			<!--- <a href="http://mdomaradzki.deviantart.com/art/Planet-Bronte-339258500" class="image featured"><img src="#$.siteConfig('themeAssetPath')#/images/pic06.jpg" alt="" /></a> --->

			<!--- Title + Credits (byline) --->	
				<header>
					<h2>
						<!--- <a href="##"> --->
							#$.renderEditableAttribute(attribute='title', label='Page Title')#
						<!--- </a> --->
					</h2>
					<cfif Len($.content('credits'))>
						<span class="byline">
							#$.renderEditableAttribute(attribute='credits', label='Credits')#
						</span>
					</cfif>
				</header>

			<!--- <a href="http://mdomaradzki.deviantart.com/art/Planet-Bronte-339258500" class="image featured"><img src="images/pic06.jpg" alt="" /></a> --->

			<!--- Primary Associated Image --->					
				<cfset img = $.getURLForImage(fileid=$.content('fileid'), size='bodyimage') />
				<cfif Len(img)>
					<span class="image featured">
						<img src="#img#" alt="#HTMLEditFormat($.content('title'))#" />
					</span>
				</cfif>

			<!--- Content --->
				<!--- 
					For information on dspBody(), visit:
					http://docs.getmura.com/v6/front-end/template-variables/document-body/
				--->
				#$.dspBody(
					body=$.content('body')
					, pageTitle=''
					, crumbList=false
					, showMetaImage=false
				)#

				<!--- Main Content Display Objects --->
					<cfif Len($.dspObjects(2))>
						<div class="row">
							<div class="12u skel-cell-important">
								#$.dspObjects(2)#
							</div>
						</div>
					</cfif>

		</article>
	<!--- // Main // --->

</cfoutput>