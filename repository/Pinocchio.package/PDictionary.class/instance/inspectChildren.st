inspecting
inspectChildren
	| children index |
	children := Array new: size.
	index := 0.
	self keysAndValuesDo: [ :key :value |
		index := index + 1.
		children at: index put: (key@value) ].
	^ children