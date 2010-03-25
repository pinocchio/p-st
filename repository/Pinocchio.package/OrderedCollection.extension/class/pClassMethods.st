*Pinocchio
pClassMethods
	<preventExport>
	self = OrderedCollection
		ifTrue: [ ^ #all ].
	^ super pClassMethods