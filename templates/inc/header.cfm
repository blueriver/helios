<!---
			This file is part of the Helios Mura CMS Theme
--->
<cfoutput>
	<!-- Header -->
		<div id="header">
					
			<!-- Inner -->
				<div class="inner">
					<header>

						<!--- This is the Site Name found under Site Config > Edit Site, Basic tab --->
						<h1><a href="#$.createHref(filename='')#" id="logo">#HTMLEditFormat($.siteConfig('site'))#</a></h1>
						
						<!--- This is the 'Tagline' found under Site Config > Edit Site, Basic tab --->
						<cfif !Len($.content('filename')) && Len($.siteConfig('tagline'))>
							<hr />
							<span class="byline">#HTMLEditFormat($.siteConfig('tagline'))#</span>
						</cfif>

					</header>
					<cfif !Len($.content('filename'))>
						<footer>
							<a href="##banner" class="button circled scrolly">Start</a>
						</footer>
					</cfif>
				</div>

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

		</div>
</cfoutput>