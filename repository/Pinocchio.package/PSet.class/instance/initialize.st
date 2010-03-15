initialization
initialize
	<preventExport>
	ratio := 5.0.
	size := 0.
	maxLinear := 20.
	buckets := PArray with: (self class bucketClass new: maxLinear).