exporting
asPClass
	<preventExport>
	self = PAbstractSend
		ifTrue: [ ^ PClass newWith: self ].
	^ super asPClass