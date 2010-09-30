block
initializeBlock
	^ PEGMultiParser
		named: 'BLOCK'
		parsing: '[' asParser
				& (((self blockArguments & self bar) optional
					& self temporaries optional
					<& self statements
					<& ']') | (self blockArguments optional & ']'))