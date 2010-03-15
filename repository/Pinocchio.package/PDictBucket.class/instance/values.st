accessing
values
	| values |
	values := Array new: bucketSize // 2.
	self valueIndexDo: [ :value :index|
		values at: (index // 2) put: value.
	].
	^ values.