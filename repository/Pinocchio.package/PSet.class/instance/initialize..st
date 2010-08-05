initialization
initialize: preferredSize
	size := 0.
	ratio := 300.
	maxLinear := 20.
	(linear := preferredSize <= maxLinear)
		ifTrue: [ buckets := Array with: (self newBucket: maxLinear) ]
		ifFalse: [ "TODO calculate proper size here"
			buckets := Array new: 32 ]