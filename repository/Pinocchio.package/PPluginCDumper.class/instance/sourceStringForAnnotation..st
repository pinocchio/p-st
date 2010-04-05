sourceCreation
sourceStringForAnnotation: anAnnotation
	| source strippedLine args pClass |
	args := self argumentsFromAnnotation: anAnnotation.
	source := self sourceLinesFromaAnnotation: anAnnotation.
	pClass := anAnnotation x host.
	source := source collect: [ :line|
		strippedLine := line withoutLeadingBlanks.
		strippedLine := self expandSourceReturn: strippedLine.
		strippedLine := self expandArgumentsIn: strippedLine fromArgs: args.
		strippedLine := self expandInstVarsIn: strippedLine withClass: pClass.
		'    ', strippedLine.
	].
	^ Character lf join: source