error handling
doesNotUnderstand: aMessage
	| selector |
	(aMessage selector = #accept:) 
		ifFalse: [ ^ super doesNotUnderstand: aMessage ].
	selector := ('visit', self objectName, ':') asSymbol.
	^ (aMessage argument) perform: selector with: self. 