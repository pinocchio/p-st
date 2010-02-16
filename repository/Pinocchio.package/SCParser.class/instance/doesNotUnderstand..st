error handling
doesNotUnderstand: message
    | selector |
    ^ parsers at: message selector ifAbsentPut: [
        selector := ('initialize', message selector capitalized) asSymbol.
        (self respondsTo: selector)
			ifTrue: [ self perform: selector ]
            ifFalse: [ super doesNotUnderstand: message ]
	]