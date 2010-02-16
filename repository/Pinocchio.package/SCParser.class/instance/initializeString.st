literal
initializeString
	" XXX Have to optimize and clean..."
	| stringBorder first |
	stringBorder := '''' asPEG omit: true.

	^ PEGParser
		named: 'STRING'
		parsing: ((stringBorder && ((stringBorder not) strongTimes)) <& stringBorder) strongPlus
		semantics: [:result |
			first := result removeFirst.
			first := first inject: '' into: [:c :e | c, e ].
			result inject: first into: [:c :e | c, '''', (e inject: '' into: [:ic :ie | ic, ie ]) ]
		]