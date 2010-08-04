removing
removeAll
	1 to: bucketSize do: [:index | self at: index put: nil].
	bucketSize := 0.