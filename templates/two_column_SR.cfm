<!---
			This file is part of the Helios Mura CMS Theme
--->
<cfoutput>
	#$.dspThemeInclude('templates/inc/html_head.cfm')#

	<body class="right-sidebar">

		#$.dspThemeInclude('templates/inc/header.cfm')#

		<div class="wrapper style1">

			<div class="container">
				<div class="row">

					<!--- Content / Body --->
						<div class="8u skel-cell-important" id="content">
							#$.dspThemeInclude('templates/inc/body.cfm')#
						</div>
					<!--- // Content / Body // --->

					<!--- Sidebar --->
						<div class="4u" id="sidebar">
							#$.dspObjects(3)#
						</div>
					<!--- // Sidebar --->

				</div>
			</div>
		</div>
		<!--- // Wrapper // --->	

	#$.dspThemeInclude('templates/inc/footer.cfm')#
</cfoutput>