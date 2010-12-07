as yet unclassified
refresh
	samples := Array new: size.
	1 to: size do: [ :i| samples at: i put: (self sampleAt: (i - 1))].
	currentIndex := currentIndex \\ size.