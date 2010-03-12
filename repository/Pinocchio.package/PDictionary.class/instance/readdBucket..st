private
reAddBucket: bucket
	bucket ifNil: [ ^ self].
	bucket keyValueDo: [ :key :value|
		self at: key put: value.
	]