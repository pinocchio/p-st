sourceCreation
sourceStringForAnnotation: anAnnotation
	| source strippedLine args |
	args := self argumentsFromAnnotation: anAnnotation.
	source := self sourceLinesFromaAnnotation: anAnnotation.
	source := source collect: [ :line|
		strippedLine := line withoutLeadingBlanks.
		strippedLine := self expandSourceReturn: strippedLine.
		strippedLine := self expandArgumentsIn: strippedLine fromArgs: args.
		'    ', strippedLine.
	].
	^ Character lf join: source