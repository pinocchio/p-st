as yet unclassified
keyIndex: aKey ifAbsent: aBlock
	self keyIndexDo: [ :key :index|
		aKey == key ifTrue: [ ^ index ].
	].
	^ aBlock value.