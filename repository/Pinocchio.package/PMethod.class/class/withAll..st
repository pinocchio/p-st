enumerating
withAll: aCollection
	| result index |
	result := self new: aCollection size.
	index := 1.
	aCollection do: [ :each|
		result at: index put: each.
		index := index +1.
	].
	^ result.