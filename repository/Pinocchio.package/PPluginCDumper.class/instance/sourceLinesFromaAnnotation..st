convenience
sourceLinesFromaAnnotation: anAnnotation
 	| source |
	source := (anAnnotation y at: anAnnotation y size) replaceAll: Character cr with: Character lf.
	source := Character lf split: source.
	^ source