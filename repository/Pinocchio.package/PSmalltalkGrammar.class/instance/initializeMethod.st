method
initializeMethod
	^ (PEGMultiParser
		named: 'METHOD'
		parsing: (self separator
			& self messagePattern
			<& self annotations
			<& self temporaries optional
			<& self statements
			<& self separator) end)
		separator: self separator	" Allow comment/whitespace at the end of a method. "