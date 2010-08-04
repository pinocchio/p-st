*Pinocchio
pMethods 
	<preventExport>
	self == Array ifTrue: [^{#asArray.}].
	^ super pMethods