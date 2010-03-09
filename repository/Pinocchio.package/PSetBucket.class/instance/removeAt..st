removing
removeAt: anInteger
	(anInteger + 1) to: bucketSize do: [ :index|
		self at: (index  - 1) put: (self at: index).
	].
	self at: bucketSize put: nil.
	bucketSize := bucketSize - 1.