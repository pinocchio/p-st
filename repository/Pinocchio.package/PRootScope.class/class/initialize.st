initialize-release
initialize 
	super initialize.
	self clearGlobals.
	decls := Dictionary new.
	self initializeGlobals.