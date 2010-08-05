enumeration
rehashFor: dict
	self keyValueDo: [ :key :value | dict at: key put: value ]