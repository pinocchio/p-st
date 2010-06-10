special
compileIfTrue: aSend
	| aBlock |
	aSend receiver accept: self.
	self append: #'send_ifTrue_'.
	self code addLast: aSend.
	aBlock := aSend at: 1.
	self compileBlock: aBlock.
	self code addLast: aBlock