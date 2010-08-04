primitives
receiveAvailableDataInto: aBuffer startingAt: pos
	| data size |
	
	data := self receive: ( aBuffer size - pos).
	size := data size.
	self warn: ( 'Size 2: ', size ).
	aBuffer replaceFrom: pos to: (pos + size-1) with: data startingAt: 1.
	self warn: ('Inbuffer:', aBuffer ).
	^ size.
	
	
	
	
	