inspecting
inspect: anObject
	| children |
	children := anObject inspectChildren.
	self shallowInspect: anObject.
	self increaseIndent.
	children do: [ :child |
		self indent.
		self write: child x name.
		self write: ': '.
		self shallowInspect: child y
	].
	self decreaseIndent.