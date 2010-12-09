as yet unclassified
initialize
	probeCount := 30.
	useStDict := true.
	randomized := false.
	keyBlockGenerator := [:i| self keyBlock ].
	self reset.
