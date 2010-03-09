accessing
atKey: aKey ifAbsent: aBlock 
	self keyValueDo: [ :key :value|
		key = aKey ifTrue: [ ^ value ].
	].
	^ aBlock value.