initialization
initialize: preferredSize
	size := 0.
	ratio := 500.
	maxLinear := 20.
	preferredSize <= maxLinear
		ifTrue: [ buckets := Array with: (self newBucket: maxLinear) ]
		ifFalse:
			[ "TODO calculate proper size here"
			buckets := Array new: 32 ]