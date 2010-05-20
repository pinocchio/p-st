exporting
createHFile
	| guardName |
	stream := self createStream: '/lib/class/' , self pclass name asString , '.h'.
	guardName := 'PINOCCHIO_LIB_' , self pclass name asString asUppercase.
	self startGuard: guardName.
	self include: 'pinocchio.h'.
	stream<< 'extern void init_' << self pclass name asString << '_methods();'; lf; lf.
	self include: 'lib/lib.h'.
	self endGuard: guardName.
	stream close