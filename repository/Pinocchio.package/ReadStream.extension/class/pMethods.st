*Pinocchio
pMethods
	<preventExport>
	self == ReadStream ifTrue: [^{#next. #upToEnd. #size}].
	^ super pMethods