inspecting
inspect: anObject
	| children |
	children := anObject inspectChildren.
	self shallowInspect: anObject.
	self increaseIndent.
	children do: [ :child |
		self shallowInspect: child
	].
	self decreaseIndent.