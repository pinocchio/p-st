inspecting
inspectChildren
	| children index |
	children := Array new: size.
	index := 0.
	self do: [ :value | children at: (index := index + 1) put: index@value ].
	^ children