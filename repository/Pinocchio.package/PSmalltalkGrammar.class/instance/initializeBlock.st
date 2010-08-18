block
initializeBlock
	^ PEGMultiParser
		named: 'BLOCK'
		parsing: '[' asPEG omit
				& (self blockArguments & self bar) optional
				<& self temporaries optional
				<& self statements
				<& ']' asPEG omit