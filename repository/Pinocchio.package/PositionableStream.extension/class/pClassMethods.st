*Pinocchio
pClassMethods
	<preventExport>
	| s |
	self = PositionableStream ifTrue: [ 
			s := OrderedCollection new.
			s add: #on:.
			^ s].
	^ OrderedCollection new.