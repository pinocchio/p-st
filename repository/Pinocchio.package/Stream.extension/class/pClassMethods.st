*Pinocchio
pClassMethods
	<preventExport>
	| s |
	self = Stream ifTrue: [ ^#all ].
	^ OrderedCollection new.