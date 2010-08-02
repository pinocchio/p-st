*Pinocchio
pClassMethods
	<preventExport>
	| s |
	self = ArrayedCollection  ifTrue: [ 
		s := OrderedCollection new.
			s
				add: #new;
				add: #newFrom:;
				add: #with:;
				add: #with:with:;
				add: #with:with:with:;
				add: #withAll:.
			^ s ].
	^ super pClassMethods