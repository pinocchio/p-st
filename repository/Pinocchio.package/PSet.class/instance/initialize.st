initialization
initialize
	<preventExport>
	ratio := 0.6.
	size := 0.
	maxLinear := 20.
	buckets := Array with: (self class bucketClass new: maxLinear).