*Pinocchio
inspectChildrenOn: inspector
	self withIndexDo: [ :value :index |
		inspector child: index value: [ value ]]