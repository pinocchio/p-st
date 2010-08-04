removing
removeAll
	bucketSize := 0.
	1 to: bucketSize by: 2 do: [:index| self at: index put: nil].