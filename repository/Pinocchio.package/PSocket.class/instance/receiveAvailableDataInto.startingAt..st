primitives
receiveAvailableDataInto: aBuffer startingAt: pos
	| data size |
	
	data := self receive.
	size := data size.
	
	