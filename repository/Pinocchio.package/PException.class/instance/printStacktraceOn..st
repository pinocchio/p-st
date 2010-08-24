printing
printStacktraceOn: aStream
	self environment ifNil: [ ^ self ].
	^ self environment printStacktraceOn: aStream.