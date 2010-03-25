exporting
asPClass
	<preventExport>
	self = PUnsintInstVariable
		ifFalse: [ ^ super asPClass ].
	^ PInternalClass newWith: self