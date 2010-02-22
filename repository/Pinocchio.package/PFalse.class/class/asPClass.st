pharo-exporting
asPClass 
	<preventExport>
	self = PFalse ifFalse: [ ^ super asPClass ].
	^ PInternalClass newWith: self
		uid: 'False_Class'.