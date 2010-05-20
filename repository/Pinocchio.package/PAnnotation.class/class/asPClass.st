exporting
asPClass
	<preventExport>
	"self = PAnnotation
		ifFalse: [" ^ super asPClass "].
	^ PInternalClass newWith: self"