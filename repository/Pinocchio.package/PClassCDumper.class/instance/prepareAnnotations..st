visitor
prepareAnnotations: annotations
	| unwanted result |
	unwanted := P unwantedAnnotations.
	^ annotations select: [ :annotation | 
			(unwanted anySatisfy: [ :symbol | symbol == annotation selector ]) not ]