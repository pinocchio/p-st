convenience
checkClassLayoutMembers: layout.	
	layout size should >= 5.
	self checkBehaviorLayoutMembers: layout.
	(layout at: 4) name should = #name.
	(layout at: 5) name should = #package.
	