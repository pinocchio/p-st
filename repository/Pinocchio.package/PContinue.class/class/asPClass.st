exporting
asPClass 
	<preventExport>
	self = PContinue ifFalse: [ ^ super asPClass ].
	^ PInternalClass newWith: self