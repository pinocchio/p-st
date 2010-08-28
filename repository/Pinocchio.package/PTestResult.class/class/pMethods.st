*Pinocchio
pMethods
	<preventExport>
	self == PTestResult ifTrue: [ ^ #all ].
	^ super pClassMethods