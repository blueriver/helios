<mura>
    <extensions>
        <!---
        			This file is part of the Helios Mura CMS Theme
        --->
        <extension type="Page" subType="Home" hasSummary="0" hasBody="0" hasAssocFile="0" iconClass="icon-home">

        	<!-- Header Background Image -->
        		<attributeset name="Header Options" container="Basic">
        				<attribute
        					name="headerBackgroundImage"
        					label="Header Background Image"
        					hint="This is the background image used throughout the site."
        					type="file"
        					defaultValue=""
        					required="false"
        					validation=""
        					regex=""
        					message=""
        					optionList=""
        					optionLabelList="" />
        		</attributeset>
        	<!-- // Header Background Image // -->

        	<!-- Home Body Options -->
        		<attributeset name="Home Body Options" container="Basic">

        			<!-- Home Body Image -->
        				<attribute
        					name="homeBodyImage"
        					label="Home Body Image"
        					hint=""
        					type="file"
        					defaultValue=""
        					required="false"
        					validation=""
        					regex=""
        					message=""
        					optionList=""
        					optionLabelList="" />

        			<!-- Home Body Title -->
        				<attribute
        					name="homeBodyTitle"
        					label="Home Body Title"
        					hint=""
        					type="text"
        					defaultValue=""
        					required="false"
        					validation=""
        					regex=""
        					message=""
        					optionList=""
        					optionLabelList="" />

        			<!-- Home Body Subtitle -->
        				<attribute
        					name="homeBodySubtitle"
        					label="Home Body Subtitle"
        					hint=""
        					type="text"
        					defaultValue=""
        					required="false"
        					validation=""
        					regex=""
        					message=""
        					optionList=""
        					optionLabelList="" />

        			<!-- Home Body Content -->
        				<attribute
        					name="homeBodyContent"
        					label="Home Body Content"
        					hint=""
        					type="htmlEditor"
        					defaultValue=""
        					required="false"
        					validation=""
        					regex=""
        					message=""
        					optionList=""
        					optionLabelList="" />
        		</attributeset>
        	<!-- // Home Body Options -->

        	<!-- Home Banner Options -->
        		<attributeset name="Home Banner Options" container="Basic">

        			<!-- Banner Title -->
        				<attribute
        					name="homeBannerTitle"
        					label="Banner Title"
        					hint=""
        					type="text"
        					defaultValue=""
        					required="false"
        					validation=""
        					regex=""
        					message=""
        					optionList=""
        					optionLabelList="" />

        			<!-- Banner Content -->
        				<attribute
        					name="homeBannerContent"
        					label="Banner Content"
        					hint=""
        					type="htmlEditor"
        					defaultValue=""
        					required="false"
        					validation=""
        					regex=""
        					message=""
        					optionList=""
        					optionLabelList="" />

        		</attributeset>
        	<!-- // Home Banner Options // -->

        	<!-- Home Carousel Options -->
        		<attributeset name="Home Carousel Options" container="Basic">

        			<!-- Show Carousel? -->
        				<attribute
        					name="homeShowCarousel"
        					label="Show Carousel?"
        					hint=""
        					type="radiogroup"
        					defaultValue="true"
        					required="false"
        					validation=""
        					regex=""
        					message=""
        					optionList="true^false"
        					optionLabelList="Yes^No" />

        			<!-- Carousel Feed -->
        				<attribute
        					name="homeCarouselFeed"
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

        		</attributeset>
        	<!-- // Home Carousel Options -->

        </extension>
    </extensions>
</mura>
