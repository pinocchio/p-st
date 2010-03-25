test-basics
testCascadeSends2
	| block result |
	block := [ :receiver | 
	receiver = nil
		ifTrue: [ 1 ]
		ifFalse:
			[ (PSend new: 1)
				receiver: receiver;
				info: nil ] ].
	result := block value: StandardTestClass.
	result receiver should be = StandardTestClass.
	result info should be = nil.
	result := block value: nil.
	result should be = 1