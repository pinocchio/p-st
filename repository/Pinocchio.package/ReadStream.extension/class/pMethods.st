*Pinocchio
pMethods
	<preventExport>
	self == ReadStream ifTrue: [^{#next. #upToEnd}].
	^ super pMethods