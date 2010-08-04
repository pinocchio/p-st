primitives
receiveAvailableDataInto: aBuffer startingAt: pos
	| data size |
	
	data := self receive: ( aBuffer size - pos).
	size := data size.
	self warn: ( 'Size 2: ', size ).
	self warn: ( 'BUffer size', aBuffer size ).
	aBuffer replaceFrom: pos to: (pos + size) with: data startingAt: 1.
	^ size.
	
	
	
	
	