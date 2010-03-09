private
readdBucket: bucket
	<preventExport>
	bucket ifNil: [ ^ self].
	bucket do: [ :value|
		self add: value.
	].