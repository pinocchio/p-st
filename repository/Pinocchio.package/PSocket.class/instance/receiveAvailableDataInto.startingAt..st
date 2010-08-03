primitives
receiveAvailableDataInto: aBuffer startingAt: pos
	| data size |
	
	data := self receive: ( aBuffer size - pos).
	size := data size.
	aBuffer replaceFrom: pos to: (pos + size) with: data startingAt: 1.
	^ size.
	
	
	
	
	