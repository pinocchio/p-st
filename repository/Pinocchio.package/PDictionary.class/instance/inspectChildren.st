inspecting
inspectChildren
	| children |
	children := OrderedCollection new.
	self keysAndValuesDo: [ :key :value | children add: (key@value) ].
	^ children