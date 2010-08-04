removing
removeAll
	size := 0.
	self bucketsDo: [:bucket| bucket removeAll ].