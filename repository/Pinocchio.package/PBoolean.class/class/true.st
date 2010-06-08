accessing
true
	<preventExport>
	trueInstance ifNil: [ trueInstance := PTrue new ].
	^ trueInstance