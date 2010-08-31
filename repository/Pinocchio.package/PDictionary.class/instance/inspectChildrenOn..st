inspecting
inspectChildrenOn: inspector
	self keysAndValuesDo: [ :key :value |
		inspector child: key value: [ value ]]