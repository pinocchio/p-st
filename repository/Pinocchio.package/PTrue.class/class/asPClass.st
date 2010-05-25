pharo-exporting
asPClass
	<preventExport>
	self = PTrue
		ifFalse: [ ^ super asPClass ].
	^  (PClass newWith: self) uid: 'True_Class'