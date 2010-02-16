accessing
false
	<preventExport>
	falseInstance ifNil: [ falseInstance := PBoolean new bool: false].
	^ falseInstance.