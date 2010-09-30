accessing
ctype
	<preventExport>
	self class == PThreadedCode ifTrue: [ ^ #Array ].
	^ super ctype.