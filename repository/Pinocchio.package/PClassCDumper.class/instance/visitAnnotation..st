visitor
visitAnnotation: aPinocchioAnnotation 
	| selector annotations |
	selector := aPinocchioAnnotation selector asPObject.
	self visit: selector.
	annotations := OrderedCollection new.
	aPinocchioAnnotation do: [ :annotation | 
		annotation ifNotNil: [
			annotations add: annotation asPObject
		]
	].
	self visitCollection: annotations.
	self put: aPinocchioAnnotation 
		with: ('new_AST_Annotation((Object)', selector uid,', ',
									(self multiArgFor: annotations) ,')').
