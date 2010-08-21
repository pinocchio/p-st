accessing
sum
	^ runs inject: 0 into: [ :sum :run| sum + run average ]