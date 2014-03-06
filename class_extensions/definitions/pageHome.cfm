<!---
			This file is part of the Parallelism Mura CMS Theme
--->
<extension type="Page" subType="Home" hasSummary="0" hasBody="0" hasAssocFile="0" iconClass="icon-home">

	<attributeset name="Portfolio Options" container="Basic">
		
		<!-- Body -->
			<attribute 
				name="portfolioFooterLeft"
				label="Body / Content"
				hint="Appears in the left footer area."
				type="htmlEditor"
				defaultValue=""
				required="false"
				validation=""
				regex=""
				message=""
				optionList=""
				optionLabelList="" />

		<!-- Social Icons / Contact -->
			<attribute 
				name="portfolioFooterRight"
				label="Social / Contact Area"
				hint="Appears in the right footer area."
				type="htmlEditor"
				defaultValue=""
				required="false"
				validation=""
				regex=""
				message=""
				optionList=""
				optionLabelList="" />

		<!-- Background Image -->
			<attribute 
				name="portfolioImageBackground"
				label="Background Image"
				hint=""
				type="file"
				defaultValue=""
				required="false"
				validation=""
				regex=""
				message=""
				optionList=""
				optionLabelList="" />
	</attributeset>
	<!-- // Portfolio Options // -->

</extension>