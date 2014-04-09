<!---
			This file is part of the Helios Mura CMS Theme
--->
<cfoutput>
	#$.dspThemeInclude('templates/inc/html_head.cfm')#

	<body class="right-sidebar">

		#$.dspThemeInclude('templates/inc/header.cfm')#

		<!-- wrapper -->
			<div class="wrapper style1">

				<!-- container -->
					<div class="container">

						<!-- row -->
							<div class="row">

								<!--- Content / Body --->
									<div class="8u skel-cell-important" id="content">
										#$.dspThemeInclude('templates/inc/body.cfm')#
									</div>
								<!--- // Content / Body // --->

								<!--- Sidebar --->
									<div class="4u sidebar" id="sidebar">
										#$.dspObjects(3)#
									</div>
								<!--- // Sidebar --->

							</div>
						<!-- // row // -->

						<!-- Features -->
							<cfif YesNoFormat($.content('heliosShowFeatures'))>
								<hr />
								#$.dspComponent('[ Body ] Features')#
							</cfif>
						<!-- // Features // -->

					</div>
				<!-- // container // -->

			</div>
		<!-- // Wrapper // -->	

	#$.dspThemeInclude('templates/inc/footer.cfm')#
</cfoutput>