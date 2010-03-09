private
shouldGrow
	<preventExport>
	size < maxLinear ifTrue: [ ^ false].
	^ (size / (buckets size)) > ratio