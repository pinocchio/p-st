extracting
transformClassSideOf: aPinocchioClass
	| aPinocchioMetaClass |
	aPinocchioMetaClass := aPinocchioClass pmetaclass. 
	
	aPinocchioClass hasSuperclass ifTrue: [
		aPinocchioMetaClass superclass: aPinocchioClass superclass pmetaclass.
	].
	"Only Object has no superclass"
	"aPinocchioMetaClass superclass: (self classASTs at: #Behavior) pmetaclass."
	
	aPinocchioMetaClass layout: (self layoutFor: aPinocchioMetaClass).

	pinocchioVisitor pclass: aPinocchioMetaClass.
	aPinocchioMetaClass methods: (self transformClassMethodsFor: aPinocchioClass).
	pinocchioVisitor popScope.
	
	^ aPinocchioMetaClass.