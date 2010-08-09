*Pinocchio
pMethods
	<preventExport>
	self == ReadStream ifTrue: [^{#next.}].
	^ super pMethods