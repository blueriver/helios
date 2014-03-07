<!---
			This file is part of the Helios Mura CMS Theme
--->
<cfoutput>
	#$.dspThemeInclude('templates/inc/html_head.cfm')#

	<body class="left-sidebar">

		#$.dspThemeInclude('templates/inc/header.cfm')#

		<div class="wrapper style1">

			<div class="container">
				<div class="row">

					<!--- Sidebar --->
						<div class="4u" id="sidebar">
							#$.dspObjects(1)#
						</div>
					<!--- // Sidebar --->

					<!--- Content / Body --->
						<div class="8u skel-cell-important" id="content">
							#$.dspThemeInclude('templates/inc/body.cfm')#
						</div>
					<!--- // Content / Body // --->

				</div>
			</div>
		</div>
		<!--- // Wrapper // --->	

	#$.dspThemeInclude('templates/inc/footer.cfm')#
</cfoutput>