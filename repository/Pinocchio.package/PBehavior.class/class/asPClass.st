pharo-exporting
asPClass
	<preventExport>
	self = PBehavior
		ifFalse: [ ^ super asPClass ].
	^ PInternalClass newWith: self uid: 'behavior'