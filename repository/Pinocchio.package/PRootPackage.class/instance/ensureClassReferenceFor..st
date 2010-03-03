exporting
ensureClassReferenceFor: aPinocchioClass
	| reference |
	reference := self ensureClassReference: aPinocchioClass name.
	reference ensurePinocchioClass: aPinocchioClass.
	aPinocchioClass package: self.
	^ reference