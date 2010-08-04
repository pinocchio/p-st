extracting
transformMethodsFor: aPinocchioClass
	|  methods methodDict sclass astMethod |
	pcompiler pclass: aPinocchioClass.
	sclass := aPinocchioClass methodProvider.
	methodDict := self transformMethods:  aPinocchioClass pMethods.
	pcompiler popScope.
	^ methodDict