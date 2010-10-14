printing
printOn: aStream
	super printOn: aStream.
	context ifNotNil: [
		aStream << ' ('.
		aStream << context homeContext closure host name.
		aStream << '>>'.
		aStream << context homeContext closure selector.
		aStream << $) ]