pharo-exporting
asPClass 
	<preventExport>
	self = PString ifFalse: [ ^ super asPClass ].
	^ PInternalClass newWith: PString
		uid: 'Type_String_Class'.