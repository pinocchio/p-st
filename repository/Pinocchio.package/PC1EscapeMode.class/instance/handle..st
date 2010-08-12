handling
handle: character
	modes at: character ifPresent: [ :m | ^ readline mode: m ].
	super handle: character