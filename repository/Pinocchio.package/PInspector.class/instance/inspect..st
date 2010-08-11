inspecting
inspect: anObject
	(anObject == PVoid) ifTrue: [ ^ self ].
	self title: (self shallowInspect: anObject).
	self inspectChildren: anObject inspectChildren