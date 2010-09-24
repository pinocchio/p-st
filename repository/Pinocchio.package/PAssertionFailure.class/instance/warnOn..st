printing
warnOn: aStream
	aStream << 'Assertion failed'.
	message ifNotNil: [ aStream << ': ' << message ]