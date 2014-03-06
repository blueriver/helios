<!---
			This file is part of the Helios Mura CMS Theme
--->
<cfoutput>
<!DOCTYPE HTML>
<!--

	Helios 1.1 by HTML5 UP
	html5up.net | @n33co

-->
<html lang="en">
	<head>
		<meta charset="utf-8" />
		<title>#HTMLEditFormat($.siteConfig('site'))# - #HTMLEditFormat($.content('title'))#</title>
		<meta name="viewport" content="width=1120,user-scalable=no" />
		<meta name="description" content="#HTMLEditFormat($.content('metaDesc'))#" />
		<meta name="keywords" content="#HTMLEditFormat($.content('metaKeywords'))#" />
		<link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400" rel="stylesheet" type="text/css" />
		<!--[if lte IE 8]><script src="#$.siteConfig('themeAssetPath')#/js/html5shiv.js"></script>-->

		<!-- Mura CSS -->
		<link rel="stylesheet" href="#$.siteConfig('assetPath')#/css/mura.6.1.1.min.css" />
		<link rel="stylesheet" href="#$.siteConfig('assetPath')#/css/mura.6.1.1.skin.css" />

		<!--- jQuery --->
		<script src="#$.siteConfig('themeAssetPath')#/js/jquery.min.js"></script>
		<script src="#$.siteConfig('themeAssetPath')#/js/jquery.poptrox.min.js"></script>
		<script src="#$.siteConfig('themeAssetPath')#/js/config.js"></script>

		<script>// skelJS uses JS to load CSS
			window._skel_config.prefix = '#$.siteConfig('themeAssetPath')#/css/style';
		</script>

		<script src="#$.siteConfig('themeAssetPath')#/js/skel.min.js"></script>
		<noscript>
			<link rel="stylesheet" href="#$.siteConfig('themeAssetPath')#/css/skel-noscript.css" />
			<link rel="stylesheet" href="#$.siteConfig('themeAssetPath')#/css/style.css" />
			<link rel="stylesheet" href="#$.siteConfig('themeAssetPath')#/css/style-desktop.css" />
			<link rel="stylesheet" href="#$.siteConfig('themeAssetPath')#/css/style-noscript.css" />
		</noscript>
		<!--[if lte IE 8]><link rel="stylesheet" href="#$.siteConfig('themeAssetPath')#/css/ie8.css" /><![endif]-->

		<!-- Custom CSS (overrides to theme + Mura styling) -->
		<link rel="stylesheet" href="#$.siteConfig('themeAssetPath')#/css/extended.css" />
		<!-- Custom JavaScript -->
		<script src="#$.siteConfig('themeAssetPath')#/js/extended.js"></script>
		#$.dspBackgroundImage()#
	</head>
	<body>

		<!--- Wrapper --->
			<div id="wrapper">

				<!--- Main --->
				<cfif not Len($.event('display'))>
					<div id="main">
						<!--- Reel --->
							<div id="reel">
								<!-- ****************************************************************** -->

								<!--- Header Item --->
									<div id="header" class="item" data-width="400">
										<!--- This is the 'Site' field found under Site Config > Edit Site, on the Basic tab --->
										<h1>#HTMLEditFormat($.siteConfig('site'))#</h1>
										<!--- This is the 'Tag Line' filed found under Site Config > Edit Site, on the Basic tab --->
										<p>#HTMLEditFormat($.siteConfig('tagline'))#</p>
									</div>
								<!--- // Header Item // --->
								
								<!--- ITEMS --->
									#$.dspThemeInclude('class_extensions/display/pageHomeItems.cfm')#
								<!--- // ITEMS // --->

								<!-- ****************************************************************** -->
							</div>
						<!--- // Reel // --->
					</div>
				</cfif>
				<!--- // Main // --->

				<!--- Footer --->
					<div id="footer">

						<!--- Left Footer --->
							<div id="footer-left" class="left">
								<!-- Body / Content -->
									#$.dspBody(
										body=$.getHomeBean().getValue('portfolioFooterLeft')
										, pageTitle=''
										, showMetaImage=0
										, crumbList=false
									)#
								<!-- // Body / Content -->
							</div>
						<!--- // Left Footer // --->

						<!--- Right Footer --->
							<div id="footer-right" class="right">

								<!--- Contact / Social --->
									#$.getHomeBean().getValue('portfolioFooterRight')#
								<!--- // Contact / Social // --->

								<!--- Copyright --->
									<div id="copyright">
										&copy; #HTMLEditFormat($.siteConfig('site'))#. Design by: <a href="http://html5up.net/">HTML5 UP</a>. Powered by: <a href="http://www.getmura.com">Mura CMS</a>.
									</div>
								<!--- // Copyright // --->

							</div>
						<!--- // Right Footer // --->

					</div>
				<!--- // Footer // --->

			</div>
		<!--- // Wrapper // --->

	</body>
</html>
</cfoutput>