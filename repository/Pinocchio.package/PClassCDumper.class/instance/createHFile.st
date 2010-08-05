exporting
createHFile
	| guardName |
	stream := self createStream:  '/', self outputFileBase , currentClass name asString , '.h'.
	guardName := 'PINOCCHIO_LIB_' , currentClass name asString asUppercase.
	self startGuard: guardName.
	self include: 'pinocchio.h'.
	stream << 'extern void init_' << currentClass name asString << '_methods();'; lf; lf.
	self include: 'lib/lib.h'.
	self endGuard: guardName.
	stream close