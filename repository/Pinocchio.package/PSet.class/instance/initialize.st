initialization
initialize
	ratio := 5.
	size := 0.
	maxLinear := 20.
	buckets := PArray with: (self class bucketClass new: maxLinear).