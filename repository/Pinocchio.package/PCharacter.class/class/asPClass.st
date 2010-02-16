pharo-exporting
asPClass 
	<preventExport>
	self = PCharacter ifFalse: [ ^ super asPClass ].
	^ PInternalClass newWith: PCharacter
		uid: 'Type_Character_Class'.