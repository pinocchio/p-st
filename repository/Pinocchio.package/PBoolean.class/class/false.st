accessing
false
	<preventExport>
	falseInstance ifNil: [ falseInstance := PFalse new. ].
	^ falseInstance