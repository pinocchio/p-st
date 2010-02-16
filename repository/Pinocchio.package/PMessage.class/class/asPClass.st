pharo-exporting
asPClass 
	<preventExport>
	self = PMessage ifFalse: [ ^ super asPClass ].
	^ PInternalClass newWith: PMessage
		uid: 'Runtime_Message_Class'.