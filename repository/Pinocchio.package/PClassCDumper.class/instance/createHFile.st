exporting
createHFile
	| guardName fileStream |
	stream := PIndentableWriteStream on: (String new: 500).
	guardName := 'PINOCCHIO_LIB_' , currentClass name asUppercase.
	self startGuard: guardName.
	self include: 'pinocchio.h'.
	stream << 'extern void init_' << currentClass name << '_methods();'; lf; lf.
	stream << 'extern void init_' << currentClass name << '_layout();'; lf; lf.
	self include: 'lib/lib.h'.
	
	stream lf.
	self exportGlobalsForHFile.
	stream lf.
	
	self endGuard: guardName.
	
	fileStream := self createStream:  '/', self outputFileBase, '.h'.
	fileStream << stream.
	fileStream close