*Pinocchio
pClassMethods
	<preventExport>
	| s |
	self = Collection ifTrue: [ 
		s := OrderedCollection new.
			s
				add: #with:;
				add: #with:with:;
				add: #with:with:with:;
				add: #withAll:.
			^ s ].
	^ super pClassMethods