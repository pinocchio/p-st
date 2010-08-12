accessing
handle: character
	actions at: character asInteger ifPresent: [ :action | ^ readline perform: action ].
	^ readline write: character