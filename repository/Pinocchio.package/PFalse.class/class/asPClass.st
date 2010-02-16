pharo-exporting
asPClass 
	<preventExport>
	self = PFalse ifFalse: [ ^ super asPClass ].
	^ PInternalClass newWith: PFalse
		uid: 'False_Class'.