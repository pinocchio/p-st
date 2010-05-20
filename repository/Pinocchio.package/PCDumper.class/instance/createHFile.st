exporting
createHFile
	| guardName |
	stream := self createStream: '/lib/lib.h'.
	guardName := 'PINOCCHIO_LIB'.
	self startGuard: guardName.
	self include: 'pinocchio.h'.
	stream
		nextPutAll: 'extern void init_lib();';
		lf;
		lf.
	self comment: 'GLOBALS ============================================='.
	globals do: [ :global | stream << 'extern ' << global type << ' '<< global uid asString << ';'; lf ].
	stream lf.
	self comment: 'INCLUDES ============================================='.
	self sortedClasses do: [ :pclass | self include: 'lib/class/' , pclass name asString , '.h' ].
	self endGuard: guardName.
	stream close