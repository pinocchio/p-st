as yet unclassified
ctype
	<preventExport>
	self class == PThreadedCode ifTrue: [ ^ #Array ].
	^ super ctype.