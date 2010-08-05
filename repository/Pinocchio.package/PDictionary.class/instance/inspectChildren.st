inspecting
inspectChildren
	| children index |
	children := Array new: size.
	index := 0.
	self keysAndValuesDo: [ :key :value | children at: (index := index + 1) put: (key@value) ].
	^ children