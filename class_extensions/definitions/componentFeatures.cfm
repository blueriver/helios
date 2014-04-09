<!---
			This file is part of the Helios Mura CMS Theme
--->
<extension type="Component" subType="Features" hasBody="0">

	<attributeset name="Features Info" container="Basic">

		<!-- Heading -->
		<attribute 
			name="compFeaturesHeading"
			label="Heading / Title"
			hint="Optional Heading"
			type="textbox"
			defaultValue=""
			required="false"
			validation=""
			regex=""
			message=""
			optionList=""
			optionLabelList="" />

		<!-- Subheading -->
		<attribute 
			name="compFeaturesSubheading"
			label="Subheading"
			hint="Optional Subheading"
			type="textbox"
			defaultValue=""
			required="false"
			validation=""
			regex=""
			message=""
			optionList=""
			optionLabelList="" />

		<!-- Feed / Content Collection -->
		<attribute 
			name="compFeaturesFeed"
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

		<!-- Show Summary? -->
		<attribute 
			name="compFeaturesShowSummary"
			label="Show Item Summary?"
			hint="Each item's title will appear by default. Do you also wish to display the summary?"
			type="radiogroup"
			defaultValue="true"
			required="false"
			validation=""
			regex=""
			message=""
			optionList="true^false"
			optionLabelList="Yes^No" />

		<!-- Column Count -->
		<attribute 
			name="compFeaturesColumnCount"
			label="Number of Columns To Display"
			hint=""
			type="selectbox"
			defaultValue="3"
			required="false"
			validation=""
			regex=""
			message=""
			optionList="1^2^3^4"
			optionLabelList="1^2^3^4" />

		<!-- Max Items -->
		<attribute 
			name="compFeaturesMaxItems"
			label="Max Items To Display"
			hint=""
			type="selectbox"
			defaultValue="3"
			required="false"
			validation=""
			regex=""
			message=""
			optionList="1^2^3^4^5^6^7^8^9^10^11^12"
			optionLabelList="1^2^3^4^5^6^7^8^9^10^11^12" />
	</attributeset>
	<!-- // Features Info // -->

</extension>