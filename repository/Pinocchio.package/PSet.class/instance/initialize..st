initialization
initialize: preferredSize
	size := 0.
	ratio := 500.
	maxLinear := 20.
	preferredSize < maxLinear ifTrue: [
		buckets := PArray with: (self class bucketClass new: maxLinear).
	] ifFalse: [
		"TODO calculate proper size here"
		buckets := PArray new: 32.
	].