initialization
initializeUnaryAnnotation
	^ super initializeUnaryAnnotation 
		semantics: [ :selector | ASTUnaryAnnotation new selector: selector ]