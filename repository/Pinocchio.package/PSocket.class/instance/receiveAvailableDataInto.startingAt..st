primitives
receiveAvailableDataInto: aBuffer startingAt: pos
	| data size |
	
	data := self receive: ( aBuffer size - pos).
	size := data size.
	"self warn: ( '-Data: ', data ).
	self warn: ( '-Size: ', size ).
	self warn: ('-Buffer size ', aBuffer size ).
	self warn: ('-Buffer before: ').
	self warn: aBuffer."
	aBuffer replaceFrom: pos to: (pos + size-1) with: data startingAt: 1.
	"self warn: ('-Buffer after ').
	self warn: aBuffer."
	^ size.
	
	
	
	
	