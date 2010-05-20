extracting
transformClassSideOf: aPinocchioClass
	| aPinocchioMetaClass |
	aPinocchioMetaClass := aPinocchioClass pmetaclass.
	aPinocchioClass hasSuperclass
		ifTrue: [ aPinocchioMetaClass superclass: aPinocchioClass superclass pmetaclass ].	"Only Object has no superclass"
	aPinocchioMetaClass layout: (self layoutFor: aPinocchioMetaClass).
	pcompiler pclass: aPinocchioMetaClass.
	aPinocchioMetaClass methods: (self transformClassMethodsFor: aPinocchioClass).
	pcompiler popScope.
	^ aPinocchioMetaClass