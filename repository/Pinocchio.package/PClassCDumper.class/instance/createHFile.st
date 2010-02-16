exporting
createHFile 
	| guardName |
	stream := self createStream: ('/lib/class/', self pclass name asString, '.h').
	
	guardName := 'PINOCCHIO_LIB_', self pclass name asString asUppercase.
	
	self startGuard: guardName.
	self include: 'pinocchio.h'.
	
	stream nextPutAll: 'extern void init_';
		nextPutAll: self pclass name asString;
		nextPutAll: '_methods();'; cr; cr.
		
	self include: 'lib/lib.h'.
	self endGuard: guardName.
	
	stream close.