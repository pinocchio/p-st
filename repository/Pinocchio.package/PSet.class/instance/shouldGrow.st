private
shouldGrow
	size < maxLinear ifTrue: [ ^ false].
	^ (size / (buckets size)) > ratio