private
readdBucket: bucket
	<preventExport>
	bucket ifNil: [ ^ self].
	bucket keyValueDo: [ :key :value|
		self at: key put: value.
	]