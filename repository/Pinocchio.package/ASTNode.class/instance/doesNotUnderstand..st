precedence
doesNotUnderstand: aMessage
	| selector |
	(aMessage selector = #accept:) 
		ifFalse: [ ^ super doesNotUnderstand: aMessage ].
	selector := ('visit', (self class name copyFrom: 4 to: (self class name size)), ':') asSymbol.
	^ (aMessage argument) perform: selector with: self. 