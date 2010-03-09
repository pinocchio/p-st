accessing
at: key put: value bucket: bucket
	| index |
	index := 1.
	[ index <= bucket size] whileTrue: [
		(bucket at: index) ifNil: [
			bucket at: index put: key.
			bucket at: (index+1) put: value.
			^ true.
		].
		index := index + 2.
	].
	^ false
	
	
	
