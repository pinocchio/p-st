accessing
keyIndex: aKey ifAbsent: aBlock
	self
		keyIndexDo:
			[ :key :index | 
			aKey = key
				ifTrue: [ ^ index ] ].
	^ aBlock value