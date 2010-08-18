error handling
doesNotUnderstand: message
	^ parsers
		at: message selector
		ifAbsentPut: [ |selector|
			selector := ('initialize' , message selector capitalized) asSymbol.
			(self respondsTo: selector)
				ifTrue: [ self perform: selector ]
				ifFalse: [ super doesNotUnderstand: message ] ]