*Pinocchio
pClassMethods
	<preventExport>
	self == TestSuite
		ifTrue: [ ^ #all ].
	^ super pClassMethods