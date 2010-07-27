sourceCreation
sourceStringForAnnotation: anAnnotation
	| source strippedLine args pClass indentation |
	args := self argumentsFromAnnotation: anAnnotation.
	source := self sourceLinesFromaAnnotation: anAnnotation.
	pClass := anAnnotation x host.
	source := source collect: [ :line|
		strippedLine := line withoutLeadingBlanks.
		indentation := String new: (line size - strippedLine size) withAll: $ .
		strippedLine := self expandSourceReturn: strippedLine.
		strippedLine := self expandArgumentsIn: strippedLine fromArgs: args.
		strippedLine := self expandInstVarsIn: strippedLine withClass: pClass.
		indentation, strippedLine.].
	^ Character lf join: source