initialization
initialize
	<preventExport>
	ratio := 0.6.
	size := 0.
	maxLinear := 20.
	buckets := PArray with: (self class bucketClass new: maxLinear).