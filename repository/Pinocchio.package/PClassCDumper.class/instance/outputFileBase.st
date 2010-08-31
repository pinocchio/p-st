exporting
outputFileBase
	^ String streamContents: [ :s |
		s << 'lib/class/'.
		currentClass
			pathDo: [ :segment | s << segment shortName ]
			separatedBy: [ s << $/ ]]