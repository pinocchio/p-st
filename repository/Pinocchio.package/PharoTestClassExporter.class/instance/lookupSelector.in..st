exporting
lookupSelector: methodSelector in: aClass
	| lookupClass |
	methodSelector isSymbol
		ifFalse: [ self error: 'Unknown type ' , methodSelector class name asString ].
	lookupClass := aClass.
	[ lookupClass == PObject ]
		whileFalse:
			[ lookupClass methodDict at: methodSelector ifPresent: [ :value | ^ value ].
			lookupClass := lookupClass superclass ].
	self error: 'MethodSelector not found: ' , methodSelector