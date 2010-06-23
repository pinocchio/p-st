extracting
transformMethodsFor: aPinocchioClass
	| method methods methodDict sclass |
	pcompiler pclass: aPinocchioClass.
	sclass := aPinocchioClass methodProvider.
	methods := aPinocchioClass pMethods.
	methodDict := PDictionary new.
	methods do: [ :selector | 
			method := sclass methodDictionary at: selector.
			"Transcript show: '    ' , sclass name , '>>' , method selector; cr."
			method := self transformMethod: method getSource.
			methodDict at: (pcompiler selectorFor: method was: selector) put: method ].
	pcompiler popScope.
	^ methodDict