removing
removeAll
	|oldSize|
	oldSize := bucketSize.
	bucketSize := 0.
	1 to: oldSize do: [:index | self at: index put: nil]