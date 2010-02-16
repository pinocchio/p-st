pharo-exporting
asPClass 
	<preventExport>
	self = PSmallInt ifFalse: [ ^ super asPClass ].
	^ PInternalClass newWith: PSmallInt
		uid: 'Type_SmallInt_Class'.