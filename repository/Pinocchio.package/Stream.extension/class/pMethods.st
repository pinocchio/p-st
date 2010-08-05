*Pinocchio
pMethods
	<preventExport>
	self == Stream ifTrue: [ ^ #all ].
	^ OrderedCollection new