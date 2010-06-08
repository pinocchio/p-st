visiting
visit: aNode
	self reset.
	aNode accept: self.
	^ code.