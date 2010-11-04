as yet unclassified
benchLongMethod
	| string |
	string := PEGStringScanner on: 'initialize 
	|c key bucketIndex values index internalConstantCode custom1 custom2 custom3 custom4 custom5 custom6 custom7 custom8 custom9|
	internalConstantCode := PDictionary new.
	internalConstantCode at: false put: #pushfalse.
	internalConstantCode at: true put: #pushtrue.
	internalConstantCode at: nil put: #pushnil.
	internalConstantCode at: 0 put: #push0.
	internalConstantCode at: 1 put: #push1.
	internalConstantCode at: 2 put: #push2.
	values := Array new: size.
	index := 0.
	self do: [ :value | values at: (index := index + 1) put: value ].
	values := Array new: size.
	index := 0.
	self do: [ :value | values at: (index := index + 1) put: value ].
	c := 1.
	buckets at: index put: bucket.
	[ c <= bucket bucketSize ] whileTrue: [ 
			key := bucket at: c.
			bucketIndex := key hash \\ buckets size + 1.
			bucketIndex = index
				ifTrue: [ c := c + 2 ]
				ifFalse: [ 
					(self bucketWithRoomAt: bucketIndex) newKey: key value: (bucket at: c + 1).
					bucket removeAt: c ] ]
	'.
	self repetitionCount timesRepeat: [ 
		methodParser parse: string.
		string reset].