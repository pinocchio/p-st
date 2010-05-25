pharo-exporting
asPClass
	<preventExport>
	self = PFalse
		ifFalse: [ ^ super asPClass ].
	^ (PClass newWith: self) uid: 'False_Class'