*Pinocchio
pMethods
	| s |
	self = TestCase
		ifFalse: [ ^ #all ].
	s := OrderedCollection new.
	s add: #setUp.
	^ s