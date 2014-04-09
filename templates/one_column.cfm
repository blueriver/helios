<!---
			This file is part of the Helios Mura CMS Theme
--->
<cfoutput>
	#$.dspThemeInclude('templates/inc/html_head.cfm')#

	<body class="no-sidebar">

		#$.dspThemeInclude('templates/inc/header.cfm')#

		<!-- Wrapper -->
			<div class="wrapper style1">

				<!-- container -->
					<div class="container">
						
						<!-- row -->
							<div class="row">

								<!--- Content / Body --->
									<div class="12u skel-cell-important" id="content">
										#$.dspThemeInclude('templates/inc/body.cfm')#
									</div>
								<!--- // Content / Body // --->

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
		<!--- // Wrapper // --->	

	#$.dspThemeInclude('templates/inc/footer.cfm')#
</cfoutput>