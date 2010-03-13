private
reAddBucket: bucket at: index
	bucket ifNil: [ ^ self].
	bucket rehashFor: self