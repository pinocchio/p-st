initialization
initialize
	<preventExport>
	self ratio: 10.
	size := 0.
	maxLinear := 20.
	buckets := PArray with: (self class bucketClass new: maxLinear).