adding
atKey: aKey put: aValue
	self keyIndexDo:  [ :key :index|
		key = aKey ifTrue: [
			^ self at: index + 1 put: aValue
		].
	].
	self keyNotFound: aKey.