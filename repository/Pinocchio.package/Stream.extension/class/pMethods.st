*Pinocchio
pMethods
	<preventExport>
	| s |
	self = Stream ifTrue: [  ^ #all ].
	^ OrderedCollection new