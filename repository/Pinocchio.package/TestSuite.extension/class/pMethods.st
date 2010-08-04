*Pinocchio
pMethods
	<preventExport>
	self == TestSuite ifTrue: [ ^ #all ].
	^ super pClassMethods