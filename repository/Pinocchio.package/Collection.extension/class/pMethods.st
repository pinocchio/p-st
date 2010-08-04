*Pinocchio
pMethods
	<preventExport>
	self = Collection
		ifTrue:
			[ | s |
			s := OrderedCollection new.
			s
				add: #inject:into:;
				add: #isEmpty;
				add: #hasReturnExpression;
				add: #anySatisfy:;
				add: #allSatisfy:;
				add: #includes:;
				add: #emptyCheck;
				add: #reject:;
				add: #select:;
				add: #collect:.
			^ s ].
	^ super pMethods