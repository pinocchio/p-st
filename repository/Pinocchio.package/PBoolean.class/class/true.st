accessing
true
	<preventExport>
	trueInstance ifNil: [ trueInstance := PBoolean new bool: true].
	^ trueInstance.