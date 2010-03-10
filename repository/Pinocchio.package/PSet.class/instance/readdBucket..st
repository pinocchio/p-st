private
reAddBucket: bucket
	bucket ifNil: [ ^ self].
	bucket do: [ :value|
		self add: value.
	].