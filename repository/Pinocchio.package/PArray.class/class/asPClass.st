pharo-exporting
asPClass 
	<preventExport>
	self = PArray ifFalse: [ ^ super asPClass ].
	^  PInternalClass newWith: self
		uid: 'Type_Array_Class'.
	