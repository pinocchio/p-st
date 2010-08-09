*Pinocchio
pClassMethods
	<preventExport>
	self == Point
		ifTrue: [ ^{#x:y:.}].
	^ super pMethods