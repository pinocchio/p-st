accessing
asPClass 
	<preventExport>
	self = PNil ifFalse: [ ^ super asPClass ].
	^ PInternalClass newWith: PNil
		uid: 'Type_Nil_Class'.