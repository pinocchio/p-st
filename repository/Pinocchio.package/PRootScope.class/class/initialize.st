initialize-release
initialize 
	super initialize.
	self clearGlobals.
	decls := PDictionary new.
	self initializeGlobals.