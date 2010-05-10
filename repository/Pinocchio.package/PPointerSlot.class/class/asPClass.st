as yet unclassified
asPClass
	<preventExport>
	self = PPointerSlot
		ifFalse: [ ^ super asPClass ].
	^ PInternalClass newWith: self