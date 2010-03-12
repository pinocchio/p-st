pharo-exporting
asPClass 
	<preventExport>
	self = PBlockClosure ifFalse: [ ^ super asPClass ].
	^ PInternalClass newWith: self