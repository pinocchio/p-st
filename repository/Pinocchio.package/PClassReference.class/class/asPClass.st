exporting
asPClass
	<preventExport>
	"self = PClassReference
		ifFalse: [ "^ super asPClass" ].
	^ PInternalClass newWith: self"