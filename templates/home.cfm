<!---
			This file is part of the Helios Mura CMS Theme
--->
<cfoutput>
	#$.dspThemeInclude('templates/inc/html_head.cfm')#

	<body class="homepage">

		<!-- Header -->
			#$.dspThemeInclude('templates/inc/header.cfm')#
		<!-- // Header // -->

		<!-- Body -->
			#$.dspThemeInclude('class_extensions/display/pageHome/body.cfm')#
		<!-- // Body // -->

		<!-- Features -->
			<cfif YesNoFormat($.content('heliosShowFeatures'))>
				<div class="wrapper style1">
					<section id="features" class="container special">
						#$.dspComponent('[ Home ] Features')#
					</section>
				</div>
			</cfif>
		<!-- // Features // -->

	#$.dspThemeInclude('templates/inc/footer.cfm')#
</cfoutput>