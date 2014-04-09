<!---
			This file is part of the Helios Mura CMS Theme
--->
<cfoutput>
	<div id="header">
				
		<!-- Inner -->
			<div class="inner">
				<header>

					<!-- Logo -->
						<!--- This is the Site Name found under Site Config > Edit Site, Basic tab --->
						<h1>
							<a href="#$.createHref(filename='')#" id="logo">
								#HTMLEditFormat($.siteConfig('site'))#
							</a>
						</h1>
					<!-- // Logo // -->
					
					<!--- This is the 'Tagline' found under Site Config > Edit Site, Basic tab --->
					<cfif !Len($.content('filename')) && Len($.siteConfig('tagline'))>
						<hr />
						<span class="byline">#HTMLEditFormat($.siteConfig('tagline'))#</span>
					</cfif>

				</header>

				<!--- Home Page Start Button : Links to 'Banner' Div --->
					<cfif Len($.content('homeBannerTitle')) OR Len($.setDynamicContent($.content('homeBannerContent')))>
						<footer>
							<a href="##banner" class="button circled scrolly">Start</a>
						</footer>
					</cfif>
			</div>
		<!-- // Inner // -->

		<!-- Nav -->
			<cf_CacheOMatic key="dspPrimaryNav#$.content('contentid')#">
				<nav id="nav">
					<!--- 
						For information on dspPrimaryNav(), visit:
						http://docs.getmura.com/v6/front-end/template-variables/document-body/
					--->
					#$.dspPrimaryNav(
						viewDepth=1
						, id='navPrimary'
						, class=''
						, displayHome='always'
						, closeFolders=true 
						, showCurrentChildrenOnly=false
						, liHasKidsClass='dropdown'
						, liHasKidsAttributes=''
						, liCurrentClass='current_page_item'
						, liCurrentAttributes=''
						, liHasKidsNestedClass='dropdown-submenu'
						, aHasKidsClass='dropdown-toggle'
						, aHasKidsAttributes=''
						, aCurrentClass=''
						, aCurrentAttributes=''
						, ulNestedClass='dropdown-menu'
						, ulNestedAttributes=''
						, aNotCurrentClass=''
						, siteid=$.event('siteid')
					)#
				</nav>
			</cf_CacheOMatic>
		<!-- // Nav // -->

	</div>
</cfoutput>