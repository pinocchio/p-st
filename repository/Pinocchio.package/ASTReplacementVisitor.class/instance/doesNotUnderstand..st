error handling
doesNotUnderstand: aMessage
	(aMessage selector beginsWith: #visit) 
		ifFalse: [ super doesNotUnderstand: aMessage ].
	^ self doVisitOn: aMessage argument.