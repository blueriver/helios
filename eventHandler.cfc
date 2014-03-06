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

		// this is a unique, one-page Portfolio site, so we need to enforce some things
		if ( homeBean.getValue('subType') != 'Home' ) {
			homeBean
				.setValue('subType', 'Home')
				.setValue('template', 'default.cfm')
				.save();
		}

	}

	public any function onRenderStart($) {
		// this is a one-page Porfolio site, so any requests for 
		// images should be redirected back to the home page
		if ( 
			Len(arguments.$.content('filename')) 
			&& arguments.$.content('contenttype') == 'Image' 
			&& ListFind('jpg,jpeg,gif,png', LCase(arguments.$.content('fileext')))
		) {
			location(arguments.$.createHref(filename=''), false);
		}

	}

}