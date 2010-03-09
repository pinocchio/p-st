removing
removeAt: anInteger
	(anInteger+2) to: bucketSize do: [ :index|
		self at: (index - 2) put: (self at: index).
	].
	self at: bucketSize put: nil.
	self at: (bucketSize - 1) put: nil.
	bucketSize := bucketSize - 2.