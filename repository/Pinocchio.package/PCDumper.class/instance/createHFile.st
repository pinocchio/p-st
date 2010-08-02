exporting
createHFile
	| guardName |
	stream := self createStream: '/lib/lib.h'.
	guardName := 'PINOCCHIO_LIB'.
	self startGuard: guardName.
	self include: 'pinocchio.h'.
	stream << 'extern void init_lib();'; lf; lf.
	self comment: 'GLOBALS ============================================='.
	globals do: [ :global | 
			stream << 'extern ' << global ctype << ' '<< (self idFor: global) << ';'; lf ].
	stream lf.
	self comment: 'INCLUDES ============================================='.
	sortedClasses do: [ :pclass | 
		self include: 'lib/class/' , pclass name asString , '.h' ].
	self endGuard: guardName.
	stream close