extracting
transformClassMethodsFor: aPinocchioClass
	| method methods methodDict cls |
	cls := aPinocchioClass methodProvider.
	methods := aPinocchioClass pClassMethods.
	methodDict := PDictionary new.
	methods do: [ :selector|
		method := cls class methodDictionary at: selector.
		Transcript show: ('    ', cls name, ' class>>', method selector); cr.
		method :=  self transformMethod: method getSource.
		methodDict at: (pinocchioVisitor selectorFor: method was: selector) put: method.
	].

	^ methodDict.