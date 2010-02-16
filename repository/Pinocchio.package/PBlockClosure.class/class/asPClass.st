pharo-exporting
asPClass 
	<preventExport>
	self = PBlockClosure ifFalse: [ ^ super asPClass ].
	^ PInternalClass newWith: PBlockClosure
		uid: 'Runtime_BlockClosure_Class'.