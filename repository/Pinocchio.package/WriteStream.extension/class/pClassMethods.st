*Pinocchio
pClassMethods
	<preventExport>
	self = WriteStream
		ifTrue:
			[ | s |
			s := OrderedCollection new.
			s add: #with:.
			^ s ].
	^ super pMethods