*Pinocchio
pMethods
	<preventExport>
	| s |
	self = ReadStream
		ifTrue:
			[ s := OrderedCollection new.
			s add: #next.
			^ s ].
	^ super pMethods