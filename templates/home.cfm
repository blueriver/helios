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
			#$.dspThemeInclude('content_types/page_home/includes/body.cfm')#
		<!-- // Body // -->

		<!-- Features -->
			<cfif YesNoFormat($.content('heliosShowFeatures'))>
				<div class="wrapper style1">
					<section id="features" class="container special ">
						<div class="row">
						#$.dspComponent('[ Body ] Features')#
						</div>
					</section>
				</div>
			</cfif>
		<!-- // Features // -->

	#$.dspThemeInclude('templates/inc/footer.cfm')#
</cfoutput>
