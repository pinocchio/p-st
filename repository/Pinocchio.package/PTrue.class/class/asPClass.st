pharo-exporting
asPClass 
	<preventExport>
	self = PTrue ifFalse: [ ^ super asPClass ].
	^ PInternalClass newWith: PTrue
		uid: 'True_Class'.