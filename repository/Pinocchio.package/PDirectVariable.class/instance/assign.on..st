visiting
assign: aValue on: anObject
	self warn: 'DirectVariable assign:', aValue inspect.
	^ self value: aValue.