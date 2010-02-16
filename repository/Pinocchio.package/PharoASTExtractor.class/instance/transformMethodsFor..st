extracting
transformMethodsFor: aPinocchioClass
	| method methods methodDict sclass |
	pinocchioVisitor pclass: aPinocchioClass.
	
	sclass := aPinocchioClass methodProvider.
	methods := aPinocchioClass pMethods.
	methodDict := Dictionary new.
	methods do: [ :selector|
		method := sclass methodDictionary at: selector.
		Transcript show: ('    ', sclass name, '>>', method selector); cr.
		method :=  self transformMethod: method getSource.
		methodDict at: method selector put: method.
	].

	pinocchioVisitor popScope.
	^ methodDict.