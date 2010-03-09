accessing
atKey: aKey
	self keyValueDo: [ :key :value|
		key = aKey ifTrue: [ ^ value ].
	].
	self keyNotFound: aKey.