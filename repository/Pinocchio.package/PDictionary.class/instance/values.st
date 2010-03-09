accessing
values
	| values index |
	values := OrderedCollection new: size.
	self bucketsDo: [ :bucket|
		bucket valuesDo: [:value|
			values add: value.
		].
	].
	^ values