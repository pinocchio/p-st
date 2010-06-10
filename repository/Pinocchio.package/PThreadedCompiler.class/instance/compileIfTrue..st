special
compileIfTrue: aSend
	| aBlock |
	aBlock := aSend at: 1.
	(((aBlock isKindOf: PBlock)
		and: [ aBlock locals size = 0 ])
		and: [ aBlock params size = 0 ])
			ifFalse: [ ^ self compileSend: aSend ].
	aSend receiver accept: self.
	self append: #'send_ifTrue_' with: aSend.
	self compileBlock: aBlock.
	self code addLast: aBlock