printing
warnOn: aStream
	aStream << 'Trying to assign to constant '.
	constant printOn: aStream.
	aStream << ': '.
	object printOn: aStream