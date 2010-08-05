*Pinocchio
pClassMethods
	<preventExport>
	self == WriteStream
		ifTrue:
			[ ^{#with:.} ].
	^ super pMethods