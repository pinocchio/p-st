pharo-exporting
asPClass
	<preventExport>
	self = PClass
		ifFalse: [ ^ super asPClass ].
	^ PInternalClass newWith: self uid: 'class'