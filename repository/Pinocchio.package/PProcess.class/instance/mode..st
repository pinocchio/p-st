accessing
mode: readMode
	self isOpened ifTrue: [ self error: 'Can''t change the mode of a running process'].
	(self isValidMode: readMode) ifFalse: [ self error: 'Invalid read/write mode: ', readMode].
	mode := readMode.