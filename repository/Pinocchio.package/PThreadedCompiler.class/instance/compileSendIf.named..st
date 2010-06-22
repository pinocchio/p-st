special
compileSendIf: aSend named: threadedName
	| aBlock |
	aBlock := aSend at: 1.
	aBlock isScoped ifTrue: [ ^ self compileSend: aSend ].
	aSend receiver accept: self.
	self append: threadedName with: aSend.
	self compileBlock: aBlock.
	self code addLast: aBlock