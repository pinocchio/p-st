adding
copyFrom: aBucket
	1 to: aBucket bucketSize do: [ :idx|
		self at: idx put: (aBucket at: idx).
	].
	bucketSize := aBucket bucketSize.
	