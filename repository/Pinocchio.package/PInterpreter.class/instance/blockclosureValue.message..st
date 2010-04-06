application
blockclosureValue: aBlockClosure message: aMessage
	| block result |
	block := aBlockClosure code.
	self assert: block params size = aMessage size.
	block size = 0 ifTrue: [ ^ nil ].
	self blockContextFor: aBlockClosure message: aMessage.
	
	result := self interpretBlock: block.
	
	context := context returnContext.
	^ result