<!--
		This file is part of the Helios Mura CMS Theme

		Notes:
			* Custom Image Sizes + Class Extensions required for this theme.
			* Feel free to rename this file or comment out the nodes below once this file has been parsed by Mura.
-->
<theme>

	<imagesizes>
		<imagesize name="featureimage" width="368" height="256" />
		<imagesize name="carouselimage" width="336" height="234" />
		<imagesize name="headerbackgroundimage" width="2000" height="1297" />
	</imagesizes>

	<extensions>
		<cfinclude template="class_extensions/definitions/baseDefault.cfm" />
		<cfinclude template="class_extensions/definitions/pageHome.cfm" />
		<cfinclude template="class_extensions/definitions/componentPhotos.cfm" />
		<cfinclude template="class_extensions/definitions/componentRSSFeed.cfm" />
		<cfinclude template="class_extensions/definitions/componentFeatures.cfm" />
		<cfinclude template="class_extensions/definitions/componentContentList.cfm" />
		<cfinclude template="class_extensions/definitions/componentWithHeadingAndButtonLink.cfm" />
	</extensions>

</theme>