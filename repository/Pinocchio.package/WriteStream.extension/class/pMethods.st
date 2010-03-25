*Pinocchio
pMethods
	<preventExport>
	self = WriteStream
		ifTrue:
			[ | s |
			s := OrderedCollection new.
			s
				add: #nextPut:;
				add: #nextPutAll:;
				add: #on:;
				add: #reset;
				add: #position:;
				add: #contents;
				add: #growTo:.
			^ s ].
	^ super pMethods