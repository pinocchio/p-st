*Pinocchio
pMethods
	<preventExport>
	| s |
	self = Point
		ifTrue:
			[ s := OrderedCollection new.
			s
				add: #x;
				add: #y;
				add: #=;
				add: #printString;
				add: #setX:setY:.
			^ s ].
	^ super pMethods