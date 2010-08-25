block
initializeBlock
	^ PEGMultiParser
		named: 'BLOCK'
		parsing: '[' asPEG
				& (((self blockArguments & self bar) optional
					& self temporaries optional
					<& self statements
					<& ']') | (self blockArguments optional & ']'))