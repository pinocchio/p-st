exporting
asPClass
	<preventExport>
	self = PDictionary ifFalse: [ ^ super asPClass ].
	^  PInternalClass newWith: self
		uid: 'Type_Dictionary_Class'.