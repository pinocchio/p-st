compilation
compile: aMethod
	self reset.
	aMethod accept: self.
	^ code.