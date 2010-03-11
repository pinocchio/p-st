visitor
visitAnnotation: aPinocchioAnnotation 
	| selector |
	selector := aPinocchioAnnotation selector asPObject.
	self visit: selector.
	self visitCollection: aPinocchioAnnotation arguments.
	self put: aPinocchioAnnotation 
		with: ('new_AST_Annotation((Object)', selector uid,', ',
									(self multiArgFor: aPinocchioAnnotation arguments) ,')').
