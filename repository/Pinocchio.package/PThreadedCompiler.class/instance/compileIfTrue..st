special
compileIfTrue: aSend
	| aBlock |
	aBlock := aSend at: 1.
	aBlock isScoped ifTrue:  [ ^ self compileSend: aSend ].
	aSend receiver accept: self.
	self append: #'send_ifTrue_' with: aSend.
	self compileBlock: aBlock.
	self code addLast: aBlock