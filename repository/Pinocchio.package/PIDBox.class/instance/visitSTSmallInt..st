visiting
visitSTSmallInt: aSmallint
	aSmallint < 0  ifTrue: [ 
		^ ('int_n', aSmallint negated asString)].
	^ ('int_', aSmallint asString).