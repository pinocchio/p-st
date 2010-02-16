expecting
= expected
	self expect: expected using: #=.
	self isShould ifTrue: [ self expectSameHash: expected ].
	^nil
	