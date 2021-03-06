exporting
createHFile
	| guardName fileStream |
	stream := PIndentableWriteStream on: (String new: 500).
	guardName := 'PINOCCHIO_LIB_' , currentClass pharoFullName asUppercase.
	self startGuard: guardName.
	self include: 'pinocchio.h'.
	stream << 'extern void init_' << currentClass pharoFullName << '_methods();'; lf; lf.
	stream << 'extern void init_' << currentClass pharoFullName << '_layout();'; lf; lf.
	self include: 'lib/lib.h'.
	
	stream lf.
	self exportGlobalsForHFile.
	stream lf.
	
	self endGuard: guardName.
	
	fileStream := self createStream:  '/', self outputFileBase, '.h'.
	fileStream << stream.
	fileStream close