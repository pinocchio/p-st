application
blockclosureValue: aBlockClosure message: aMessage
	| block result returnContext |
	block := aBlockClosure code.
	self assert: block params size = aMessage size.
	block size = 0 ifTrue: [ ^ nil ].
	
	returnContext := context.
	self blockContextFor: aBlockClosure message: aMessage.
	
	result := self interpretBlock: block.
	
	context := returnContext.
	^ result