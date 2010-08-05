*Pinocchio
pClassMethods
	<preventExport>
	self == TestCase
		ifTrue: [ ^ #all ].
	^ super pClassMethods