accessing
indexOf: anObject ifAbsent: aBlock
	self
		valueIndexDo:
			[ :value :index | 
			anObject = value
				ifTrue: [ ^ index ] ].
	^ aBlock value