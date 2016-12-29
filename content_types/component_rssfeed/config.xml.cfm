<mura>
    <extensions>
        <!---
			This file is part of the Helios Mura CMS Theme
        --->
        <extension type="Component" subType="RSSFeed" hasBody="0">

        	<attributeset name="RSS Feed Info" container="Basic">

        		<!-- Feed Font Awesome Icon -->
        		<attribute
        			name="rssFeedIcon"
        			label="RSS Feed Icon Class"
        			hint="Use any Font Awesome Icon Class (http://fontawesome.io/icons/)"
        			type="textbox"
        			defaultValue="fa-rss"
        			required="false"
        			validation=""
        			regex=""
        			message=""
        			optionList=""
        			optionLabelList="" />

        		<!-- Heading -->
        		<attribute
        			name="rssFeedHeading"
        			label="RSS Heading / Title"
        			hint=""
        			type="textbox"
        			defaultValue="Mura CMS"
        			required="false"
        			validation=""
        			regex=""
        			message=""
        			optionList=""
        			optionLabelList="" />

        		<!-- Link -->
        		<attribute
        			name="rssFeedLink"
        			label="RSS Link URL (including http://)"
        			hint="Enter the full URL to the RSS Feed"
        			type="textbox"
        			defaultValue="http://www.getmura.com/tasks/feed/?feedID=91B4E7A5-37AC-466A-ACDF6ABFD95ACCBD"
        			required="true"
        			validation=""
        			regex=""
        			message="Please enter a RSS Link URL"
        			optionList=""
        			optionLabelList="" />

        		<!-- Show Summary? -->
        		<attribute
        			name="rssFeedShowSummary"
        			label="Show Item Summary?"
        			hint="Each item's link and title will appear by default. Do you also wish to display the summary?"
        			type="radiogroup"
        			defaultValue="true"
        			required="false"
        			validation=""
        			regex=""
        			message=""
        			optionList="true^false"
        			optionLabelList="Yes^No" />

        		<!-- Show PubDate? -->
        		<attribute
        			name="rssFeedShowPubDate"
        			label="Show Item Publication Date?"
        			hint="Each item's link and title will appear by default. Do you also wish to display the publication date?"
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
        			name="rssFeedMaxItems"
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
        	<!-- // RSS Feed Info // -->

        </extension>
    </extensions>
</mura>
