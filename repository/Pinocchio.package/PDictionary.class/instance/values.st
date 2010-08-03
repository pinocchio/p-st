accessing
values
	| values |
	values := OrderedCollection new: size.
	self bucketsDo: [ :bucket | bucket valuesDo: [ :value | values add: value ] ].
	^ values