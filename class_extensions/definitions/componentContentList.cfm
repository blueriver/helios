<!---
		This file is part of the Helios Mura CMS Theme
--->
<extension type="Component" subType="ContentList" hasBody="0">

	<attributeset name="Content List Info" container="Basic">

		<!-- Font Awesome Icon -->
		<attribute 
			name="contentListIcon"
			label="Font Awesome Icon Class"
			hint="Use any Font Awesome Icon Class (http://fontawesome.io/icons/)"
			type="textbox"
			defaultValue="fa-file"
			required="false"
			validation=""
			regex=""
			message=""
			optionList=""
			optionLabelList="" />

		<!-- Heading -->
		<attribute 
			name="contentListHeading"
			label="Content List Heading/Title"
			hint="Enter the Heading you wish to appear above the listing of content."
			type="textbox"
			defaultValue=""
			required="false"
			validation=""
			regex=""
			message=""
			optionList=""
			optionLabelList="" />

		<!-- Feed -->
		<attribute 
			name="contentListFeed"
			label="Content Listing Content Collection/Local Index Feed Name"
			hint="Select the name of the Local Content Collection/Index to use"
			type="selectbox"
			defaultValue="[mura]ListFirst($.getLocalFeedNames(), '^')[/mura]"
			required="false"
			validation=""
			regex=""
			message=""
			optionList="[mura]$.getLocalFeedNames()[/mura]"
			optionLabelList="[mura]$.getLocalFeedNames()[/mura]" />

		<!-- Show Credits? -->
		<attribute 
			name="contentListShowCredits"
			label="Show Credits?"
			hint=""
			type="radiogroup"
			defaultValue="false"
			required="false"
			validation=""
			regex=""
			message=""
			optionList="true^false"
			optionLabelList="Yes^No" />

		<!-- Show Release Date? -->
		<attribute 
			name="contentListShowDate"
			label="Show Release Date?"
			hint=""
			type="radiogroup"
			defaultValue="true"
			required="false"
			validation=""
			regex=""
			message=""
			optionList="true^false"
			optionLabelList="Yes^No" />

		<!-- Show Summary? -->
		<attribute 
			name="contentListShowSummary"
			label="Show Summary?"
			hint=""
			type="radiogroup"
			defaultValue="true"
			required="false"
			validation=""
			regex=""
			message=""
			optionList="true^false"
			optionLabelList="Yes^No" />

		<!-- Max Items -->
		<attribute 
			name="contentListMaxItems"
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
	<!-- // Content List Info // -->

</extension>