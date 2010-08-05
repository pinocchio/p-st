inspecting
inspectChildren
	| children index |
	children := OrderedCollection new.
	index := 0.
	buckets do: [ :bucket |
		bucket ifNotNil:
			[ 1 to: bucket bucketSize do: [ :i |
				index := index + 1.
				 children add: index@(bucket at: i)  ] ] ].
	^ children