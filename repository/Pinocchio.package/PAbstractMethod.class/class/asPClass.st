exporting
asPClass
	<preventExport>
	self = PAbstractMethod
		ifTrue: [ ^ PClass newWith: self ].
	^ super asPClass