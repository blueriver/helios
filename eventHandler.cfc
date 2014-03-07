/*
	This file is part of the Helios Mura CMS Theme
*/
component extends="mura.cfobject" output="false" {

	/*
			This is the THEME eventHandler.cfc 

			* Add theme-specific eventHandlers (listeners) here
			* This file is much like a controller in a MVC application 
			* Reload the application when additions/changes are made to THIS file!
	*/

	public any function onApplicationLoad($) {

		// make sure 'Home' page set to 'Page/Home'
		var homeBean = arguments.$.getBean('content').loadBy(filename='');
		if ( homeBean.getValue('subType') != 'Home' ) {
			homeBean
				.setValue('subType', 'Home')
				.setValue('template', 'home.cfm')
				.save();
		}

	}

	public any function onSiteRequestStart($) {

		/* cfStatic */
		// http://dominicwatson.github.io/cfstatic/full-guide.html (See Configuration section)
		// if in production, set checkForUpdates=false
		/*
		arguments.$.static(
			outputDirectory = 'compiled'
			, checkForUpdates = !arguments.$.siteConfig('cache')
			, lessGlobals = ExpandPath($.siteConfig('themeAssetPath') & '/css/less-globals/globals.less')
		);
		*/

	}

	public any function onRenderStart($) {

		// force Home layout template if subtype is 'Home'
		if ( arguments.$.content('subtype') == 'Home' ) {
			arguments.$.content('template', 'home.cfm');
		}

		// force Summary page view for Link and File content types
		if ( arguments.$.event('showMeta') != 2 ) {
			arguments.$.event('showMeta', 1);
		}

		// for code syntax highlighting
		try {
			arguments.$.loadPrettify();
		} catch(any e) {
			// Mura CMS version is probably older than 6.1
		}

	}

	// Class Extensions
		// public any function onComponentWithHeadingAndButtonLinkBodyRender($) {
		// 	var str = '';
		// 	savecontent variable='str' {
		// 		WriteOutput(arguments.$.dspThemeInclude('class_extensions/display/componentWithHeadingAndButtonLink.cfm'));
		// 	}
		// 	return str;
		// }

		// this uses an external RSS Feed and outputs the data
		// public any function onComponentRSSFeedBodyRender($) {
		// 	var str = '';
		// 	savecontent variable='str' {
		// 		WriteOutput(arguments.$.dspThemeInclude('class_extensions/display/componentRSSFeed.cfm'));
		// 	}
		// 	return str;
		// }

		// used in the common footer
			// public any function onComponentArticleListBodyRender($) {
			// 	var str = '';
			// 	savecontent variable='str' {
			// 		WriteOutput(arguments.$.dspThemeInclude('class_extensions/display/componentArticleList.cfm'));
			// 	}
			// 	return str;
			// }


}