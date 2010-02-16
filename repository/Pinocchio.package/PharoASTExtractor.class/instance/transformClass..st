extracting
transformClass: sclassIn
	| aPinocchioClass sclass|
	sclass := self shortcutSClass: sclassIn.
	sclass ifNil: [ ^ nil ].
	aPinocchioClass := sclass asPClass.
	self done at: aPinocchioClass name ifPresent: [ :present | ^ present ].
	
	"Transcript show: aPinocchioClass."
	
	self haltIf: (pinocchioVisitor rootScope isKindOf: PRootScope) not.
	
	Transcript show: 'Transforming '; show: aPinocchioClass name; cr.
	
	self done at: aPinocchioClass name put: aPinocchioClass.
	aPinocchioClass package: (self ensurePackageFor: aPinocchioClass sclass).
	self declareClassReference: (self ensureClassReferenceFor: aPinocchioClass) as: aPinocchioClass name asSymbol.
	(aPinocchioClass package at: aPinocchioClass name) should not isNil.
	(aPinocchioClass package at: aPinocchioClass name) pclass should not isNil.
	
	self transformSuperClassOf: aPinocchioClass.
	self transformClassSideOf: aPinocchioClass.
	aPinocchioClass layout: (self layoutFor: aPinocchioClass).
	
	aPinocchioClass methods: (self transformMethodsFor: aPinocchioClass).
	classASTs at: aPinocchioClass name asSymbol put: aPinocchioClass.
	^ aPinocchioClass.