<!---
			This file is part of the Helios Mura CMS Theme
--->
<cfoutput>
<!DOCTYPE HTML>
<!--
	Helios 1.5 by HTML5 UP
	html5up.net | @n33co
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html lang="en">
	<head>
		<meta charset="utf-8" />
		<title>#HTMLEditFormat($.siteConfig('site'))# - #HTMLEditFormat($.content('title'))#</title>
		<meta name="description" content="#HTMLEditFormat($.content('metaDesc'))#" />
		<meta name="keywords" content="#HTMLEditFormat($.content('metaKeywords'))#" />
		<link rel="icon" href="#$.siteConfig('assetPath')#/images/favicon.ico" type="image/x-icon" />
		<link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600" rel="stylesheet" type="text/css" />
		<!--[if lte IE 8]><script src="#$.siteConfig('themeAssetPath')#/js/html5shiv.js"></script><![endif]-->

		<!-- Mura CSS -->
		<link rel="stylesheet" href="#$.siteConfig('assetPath')#/css/mura.#$.globalConfig('version')#.min.css" />
		<link rel="stylesheet" href="#$.siteConfig('assetPath')#/css/mura.#$.globalConfig('version')#.skin.css" />

		<!--- jQuery --->
		<script src="#$.siteConfig('themeAssetPath')#/js/jquery.min.js"></script>
		<script src="#$.siteConfig('themeAssetPath')#/js/jquery.dropotron.min.js"></script>

		<script>// skelJS uses JS to load CSS
			window._skelJSprefix = '#$.siteConfig('themeAssetPath')#/css/style';
		</script>

		<script src="#$.siteConfig('themeAssetPath')#/js/skel.min.js"></script>
		<script src="#$.siteConfig('themeAssetPath')#/js/skel-panels.min.js"></script>
		<script src="#$.siteConfig('themeAssetPath')#/js/init.js"></script>
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
</cfoutput>
