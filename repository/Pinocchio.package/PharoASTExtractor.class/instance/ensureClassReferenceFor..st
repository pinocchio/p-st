extracting
ensureClassReferenceFor: aPinocchioClass
	| classReference |
	aPinocchioClass package at: aPinocchioClass name ifPresent: [ :el |
		el ensurePinocchioClass: aPinocchioClass.
		^ el ].
	classReference := aPinocchioClass package ensureClassReference: aPinocchioClass name.
	classReference ensurePinocchioClass: aPinocchioClass.
	self checkClassReference: classReference.
	^ classReference