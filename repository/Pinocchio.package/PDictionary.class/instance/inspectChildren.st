inspecting
inspectChildren
	| children |
	children := OrderedCollection new.
	buckets do: [ :bucket |
		bucket ifNotNil:
			[ 1 to: bucket bucketSize by: 2 do: [ :i | 
				children add: (bucket at: i)@(bucket at: i+1)  ] ] ] .
	^ children