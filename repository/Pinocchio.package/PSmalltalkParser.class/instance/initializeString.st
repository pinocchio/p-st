initialization
initializeString
	^ super initializeString
		semantics: [ :result |
			result size = 0
				ifTrue: [ '' ]
				ifFalse: [
					result inject: (stream with: (result removeFirst)) into: [ :s :i | s << '''' << i ].
					stream contents ] ]