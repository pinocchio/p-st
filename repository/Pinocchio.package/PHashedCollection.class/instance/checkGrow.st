private
checkGrow
	size := size + 1.
	(size * 100 // buckets size > ratio) ifTrue: [ self grow ]