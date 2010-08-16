*Pinocchio
pMethods
	<preventExport>
	self == TestResult ifTrue: [ ^ #all ].
	^ super pClassMethods