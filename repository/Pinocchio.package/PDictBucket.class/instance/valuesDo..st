enumeration
valuesDo: aBlock
	self valueIndexDo: [ :value :index|
		aBlock value: value.
	].