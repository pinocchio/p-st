inspecting
inspectChildren
	| children index |
	children := OrderedCollection new.
	index := 0.
	self valuesDo: [ :value |
		index := index + 1.
		children add: index@value ].
	^ children