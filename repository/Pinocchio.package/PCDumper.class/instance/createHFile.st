exporting
createHFile
	| guardName |
	stream := self createStream: '/lib/lib.h'.
	guardName := 'PINOCCHIO_LIB'.
	self startGuard: guardName.
	self include: 'pinocchio.h'.
	stream << 'extern void init_lib();'; lf; lf.
	self comment: 'GLOBALS ============================================='.
	self exportGlobalsForHFile.
	stream lf.
	self comment: 'INCLUDES ============================================='.
	sortedClasses do: [ :pclass | 
		self include: ('lib/class/', 
						(pclass package fullName copyReplaceAll: '.' with: '/'), '/' , 
						pclass name asString , '.h') ].
	self endGuard: guardName.
	stream close