<!---
			This file is part of the Helios Mura CMS Theme
--->
<cfoutput>
	<!--- Breadcrumbs --->
	<!--- <nav>#$.dspCrumbListLinks(separator='&nbsp;/&nbsp;&nbsp;')#</nav> --->

	<!--- Main --->
		<article id="main">

			<!--- Title + Credits (byline) --->	
				<header>
					<h2>#$.renderEditableAttribute(attribute='title', label='Page Title')#</h2>
					<cfif Len($.content('credits'))>
						<span class="byline">
							#$.renderEditableAttribute(attribute='credits', label='Credits')#
						</span>
					</cfif>
				</header>

			<!--- Primary Associated Image --->					
				<cfif Len($.content('filename'))>
					<cfset img = $.getURLForImage(fileid=$.content('fileid'), size='large') />
					<cfif Len(img)>
						<span class="image featured">
							<img src="#img#" alt="#HTMLEditFormat($.content('title'))#" />
						</span>
					</cfif>
				</cfif>

			<!--- Main Content --->
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