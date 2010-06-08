visiting
compile: aMethod
	self reset.
	aMethod accept: self.
	^ code.