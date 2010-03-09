enumeration
keyValueDo: aBlock
	self keyValueIndexDo: [ :key :value :index|
		aBlock value: key value: value.
	]
	