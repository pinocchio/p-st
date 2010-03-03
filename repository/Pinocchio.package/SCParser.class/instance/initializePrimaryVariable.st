variable
initializePrimaryVariable
	^ PEGParser
		named: 'PRIMARY-VARIABLE'
		parsing: (self identifier && (('.' asPEG omit: true) && self identifier) strongTimes)
		semantics: [:result |
			self createReference:
				((result at: 2)
					addFirst: (result at: 1);
					yourself)  ]