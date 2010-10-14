inspecting
inspect: anObject
	(anObject == PVoid) ifTrue: [ ^ PVoid ].
	self shallowInspect: anObject on: self titleStream.
	self inspectChildren: anObject