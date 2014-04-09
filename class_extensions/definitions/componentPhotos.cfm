<!---
			This file is part of the Helios Mura CMS Theme
--->
<extension type="Component" subType="Photos" hasBody="0">

	<attributeset name="Photos Info" container="Basic">

		<!-- Font Awesome Icon -->
		<attribute 
			name="compPhotosIcon"
			label="Font Awesome Icon Class"
			hint="Use any Font Awesome Icon Class (http://fontawesome.io/icons/)"
			type="textbox"
			defaultValue="fa-camera"
			required="false"
			validation=""
			regex=""
			message=""
			optionList=""
			optionLabelList="" />

		<!-- Heading -->
		<attribute 
			name="compPhotosHeading"
			label="Heading / Title"
			hint=""
			type="textbox"
			defaultValue="Photos"
			required="false"
			validation=""
			regex=""
			message=""
			optionList=""
			optionLabelList="" />

		<!-- Feed / Content Collection -->
		<attribute 
			name="compPhotosFeed"
			label="Content Collection/Local Index Feed Name"
			hint="Select the name of the Local Content Collection/Index to use"
			type="selectbox"
			defaultValue="[mura]ListFirst($.getLocalFeedNames(), '^')[/mura]"
			required="false"
			validation=""
			regex=""
			message=""
			optionList="[mura]$.getLocalFeedNames()[/mura]"
			optionLabelList="[mura]$.getLocalFeedNames()[/mura]" />

		<!-- Column Count -->
		<attribute 
			name="compPhotosColumnCount"
			label="Number of Columns To Display"
			hint=""
			type="selectbox"
			defaultValue="2"
			required="false"
			validation=""
			regex=""
			message=""
			optionList="1^2^3^4"
			optionLabelList="1^2^3^4" />

		<!-- Max Items -->
		<attribute 
			name="compPhotosMaxItems"
			label="Max Items To Display"
			hint=""
			type="selectbox"
			defaultValue="4"
			required="false"
			validation=""
			regex=""
			message=""
			optionList="1^2^3^4^5^6^7^8^9^10"
			optionLabelList="1^2^3^4^5^6^7^8^9^10" />
	</attributeset>
	<!-- // Photo Info // -->

</extension>