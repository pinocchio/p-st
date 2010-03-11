visitor
visitUnaryAnnotation: anASTUnaryAnnotation 
	| annotation |
	annotation := PAnnotation new: 0.
	annotation selector: (self visit: anASTUnaryAnnotation selector).
	^ annotation