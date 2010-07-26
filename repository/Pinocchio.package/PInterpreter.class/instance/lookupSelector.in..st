sending
lookupSelector: selector in: class
	<pPrimitive: #'lookupSelector:in:' plugin: #'Interpretation.Interpreter'>
	| currentClass |
	currentClass := class.
	[ currentClass isNil ] whileFalse: [ 
			currentClass methodDict at: selector ifPresent: [ :method | ^ method ].
			currentClass := currentClass superclass ].
	^ nil