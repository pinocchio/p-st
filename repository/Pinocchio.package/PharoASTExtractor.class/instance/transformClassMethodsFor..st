extracting
transformClassMethodsFor: aPinocchioClass
	| methods methodDict cls astMethod |
	cls := aPinocchioClass methodProvider.
	^ self transformMethods: aPinocchioClass pClassMethods.
	