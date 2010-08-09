*Pinocchio
pMethods
	<preventExport>
	self == TestCase ifFalse: [ ^ #all ].
	^ {#setUp.}