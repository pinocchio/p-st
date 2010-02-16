initialize-release
initialize 
	super initialize.
	scope := PRootScope new.
	rootScope := scope.
	self world: self rootScope.