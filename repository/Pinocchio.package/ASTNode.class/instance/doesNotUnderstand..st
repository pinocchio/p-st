precedence
doesNotUnderstand: aMessage
	| selector |
	aMessage selector = #accept:
		ifFalse: [ ^ super doesNotUnderstand: aMessage ].
	selector := ('visit' , self astName , ':') asSymbol.
	^ aMessage argument perform: selector with: self