pharo-exporting
ctype
	<preventExport>
	self class == PArray ifTrue: [ ^ #Array ].
	^ super ctype.