application
blockclosureValue: aBlockClosure message: aMessage
	| block pc result |
	block := aBlockClosure code.
	self assert: block params size = aMessage size.
	block size = 0 ifTrue: [ ^ nil ].
	self blockContextFor: aBlockClosure message: aMessage.
	
	pc := 0.
	[ (pc := pc + 1) < block size ] whileTrue: [ (block at: pc) accept: self ].
	result := (block at: pc) accept: self.
	context := context returnContext.
	^ result