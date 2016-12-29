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
}
