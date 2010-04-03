sending
lookupSelector: selector in: class
	<pinocchioPrimitive: #'lookupSelector:in:' module: #'Interpretation.Interpreter'>
	| currentClass |
	currentClass := class.
	[ currentClass isNil ] whileFalse: [ 
			currentClass methodDict at: selector ifPresent: [ :method | ^ method ].
			currentClass := currentClass superclass ].
	^ nil