extracting
transformClass: sclass
	| aPinocchioClass |
	
	aPinocchioClass := sclass asPClass. 
	done at: aPinocchioClass pharoName ifPresent: [ :present | ^ present ].
	self haltIf: (pcompiler rootScope isKindOf: PRootScope) not.
	
	done at: aPinocchioClass pharoName put: aPinocchioClass.
	aPinocchioClass package: (self ensurePackageFor: aPinocchioClass).
	self declareClassReference: (self ensureClassReferenceFor: aPinocchioClass) as: aPinocchioClass pharoName.
	
	"Transcript show: aPinocchioClass pharoName asSymbol; cr."
	
	"(aPinocchioClass package at: aPinocchioClass name) should not isNil.
	(aPinocchioClass package at: aPinocchioClass name) pclass should not isNil."
	
	self transformSuperClassOf: aPinocchioClass.
	self transformClassSideOf: aPinocchioClass.
	aPinocchioClass layout: (self layoutFor: aPinocchioClass).
	aPinocchioClass methods: (self transformMethodsFor: aPinocchioClass).
	
	^ aPinocchioClass