accessing
indent 
	indent ifNil: [ indent := 0 ].
	indent timesRepeat: [ '  ' stdout ]