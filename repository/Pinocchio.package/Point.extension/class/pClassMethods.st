*Pinocchio
pClassMethods
	<preventExport>
	| s |
	self = Point ifTrue: [
		s := OrderedCollection new.
		s add: #x:y:.
		^ s
	].
	^ super pMethods