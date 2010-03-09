removing
emptyBucket: bucket at: removeIndex
	(removeIndex+2) to: bucket size do: [ :index|
		bucket at:( index-2) put: (bucket at: index).
	].
	size := size - 1.
	