initialize-release
initialize
	super initialize.
	scope := PRootScope new.
	rootScope := scope.
	threadedCompiler := PThreadedCompiler new.