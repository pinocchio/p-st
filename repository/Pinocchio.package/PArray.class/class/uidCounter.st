accessing
uidCounter
	<preventExport>
	uidCounter ifNil: [ uidCounter := 0 ].
	^ uidCounter