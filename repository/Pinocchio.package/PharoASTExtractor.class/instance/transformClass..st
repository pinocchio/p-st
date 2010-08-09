extracting
transformClass: sclass
	| aPinocchioClass |
	aPinocchioClass := sclass asPClass.
	done at: aPinocchioClass name ifPresent: [ :present | ^ present ].
	self haltIf: (pcompiler rootScope isKindOf: PRootScope) not.
	
	done at: aPinocchioClass name put: aPinocchioClass.
	classASTs at: aPinocchioClass name asSymbol put: aPinocchioClass.
	aPinocchioClass package: (self ensurePackageFor: aPinocchioClass).
	self declareClassReference: (self ensureClassReferenceFor: aPinocchioClass) as: aPinocchioClass name asSymbol.
	(aPinocchioClass package at: aPinocchioClass name) should not isNil.
	(aPinocchioClass package at: aPinocchioClass name) pclass should not isNil.
	
	self transformSuperClassOf: aPinocchioClass.
	self transformClassSideOf: aPinocchioClass.
	aPinocchioClass layout: (self layoutFor: aPinocchioClass).
	aPinocchioClass methods: (self transformMethodsFor: aPinocchioClass).
	
	^ aPinocchioClass