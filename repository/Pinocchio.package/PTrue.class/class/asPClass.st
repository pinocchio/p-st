pharo-exporting
asPClass
	<preventExport>
	self = PTrue
		ifFalse: [ ^ super asPClass ].
	^ PInternalClass newWith: self uid: 'True_Class'