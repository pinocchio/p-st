comparing
= otherClass
	"TODO find out why this causes an error in Runtime_BlockContext_lookup"
	<preventExport>
	(otherClass isKindOf: self class) ifFalse: [ ^ false ].
	^ self name = otherClass name