accessing
values
	| values index |
	values := OrderedCollection new: size.
	buckets do: [ :bucket|
		self values: values bucket: bucket.
	].
	^ values