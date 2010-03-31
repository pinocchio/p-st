inspecting
inspect: anObject
	self title: (self shallowInspect: anObject).
	self inspectChildren: anObject inspectChildren