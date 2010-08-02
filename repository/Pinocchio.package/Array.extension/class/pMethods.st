*Pinocchio
pMethods 
	<preventExport>
	self == Array ifFalse: [^ OrderedCollection new].
	^ #all