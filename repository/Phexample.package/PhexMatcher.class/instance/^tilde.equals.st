expecting
~= expected
	self expect: expected using: #~=.
	self isShouldNot ifTrue: [ self expectSameHash: expected ].
	^nil
	
	