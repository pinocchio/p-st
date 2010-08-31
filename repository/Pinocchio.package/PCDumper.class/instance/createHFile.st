exporting
createHFile
	| guardName fileStream |
	stream := PIndentableWriteStream on: (String new: 10000).
	guardName := 'PINOCCHIO_LIB'.
	self startGuard: guardName.
	self include: 'pinocchio.h'.
	stream << 'extern void init_lib();'; lf; lf.
	self comment: 'GLOBALS ============================================='.
	self exportGlobalsForHFile.
	stream lf.
	self comment: 'INCLUDES ============================================='.
	sortedClasses do: [ :pclass | 
		stream << '#include <lib/class/'.
		pclass
			pathDo: [ :segment | stream << segment shortName ]
			separatedBy: [ stream << $/ ].
		stream << '.h>'.
		stream lf ].
	self endGuard: guardName.
	
	fileStream := self createStream: '/lib/lib.h'.
	fileStream << stream.
	fileStream close.