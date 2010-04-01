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
				add: #asString;
				add: #setX:setY:.
			^ s ].
	^ super pMethods