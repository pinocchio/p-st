private
expect: aResult
	self assert: (bool ifTrue: [ aResult ] ifFalse: [ aResult not ])
	