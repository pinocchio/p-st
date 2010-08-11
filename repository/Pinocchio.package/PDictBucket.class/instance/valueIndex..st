accessing
valueIndex: aValue
	self
		valueIndexDo:
			[ :value :index | 
			aValue = value
				ifTrue: [ ^ index ] ].
	self valueNotFound: aValue