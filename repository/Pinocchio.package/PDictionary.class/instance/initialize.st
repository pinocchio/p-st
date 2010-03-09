initialization
initialize
	<preventExport>
	super initialize.
	buckets := Array new: 3.
	size := 0.
	ratio := 0.6.