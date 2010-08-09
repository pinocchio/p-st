printing
warnOn: aStream
	aStream << 'Failed assigning to '.
	constant printOn: aStream.
	aStream << ': '.
	object printOn: aStream