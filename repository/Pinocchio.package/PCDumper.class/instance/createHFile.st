exporting
createHFile
	|guardName|
	stream := self createStream: '/lib/lib.h'.
	
	guardName := 'PINOCCHIO_LIB'.
	self startGuard: guardName.
	self include: 'pinocchio.h'.
	stream nextPutAll: 'extern void init_lib();'; cr; cr.
	
	self comment: 'GLOBALS ============================================='.
	globals do: [ :global|
		stream nextPutAll: 'Object ';
			nextPutAll: global uid asString;
			nextPutAll: ';'; cr.
	].
	stream cr.
	self comment: 'INCLUDES ============================================='.
	
	self sortedClasses do: [ :pclass|
		self include: 'lib/class/',pclass name asString, '.h'.
	].

	self endGuard: guardName.
	stream close.
	