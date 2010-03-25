pharo-exporting
asPClass
	<preventExport>
	self = PMetaclass
		ifFalse: [ ^ super asPClass ].
	^ PInternalClass newWith: self uid: 'Metaclass'