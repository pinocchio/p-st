inspecting
inspect: anObject
	(anObject == PVoid) ifTrue: [ ^ self ].
	self shallowInspect: anObject on: self titleStream.
	self inspectChildren: anObject