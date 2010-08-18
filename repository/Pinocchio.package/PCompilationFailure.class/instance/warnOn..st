printing
warnOn: aStream
	target printOn: aStream.
	aStream << '>>'.
	method message printOn: aStream.
	aStream << ': ' << message.