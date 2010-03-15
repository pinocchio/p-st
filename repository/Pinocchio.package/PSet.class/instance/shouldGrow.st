private
shouldGrow
	size < maxLinear ifTrue: [ ^ false].
	^ (size*100 // (buckets size)) > (ratio*100)