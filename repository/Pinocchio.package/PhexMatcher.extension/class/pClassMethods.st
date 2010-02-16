*Pinocchio
pClassMethods
	<preventExport>
	| s |
	self = PhexMatcher ifTrue: [
		s := OrderedCollection new.
		s add: #with:.
		^ s
	].
	^ super pMethods