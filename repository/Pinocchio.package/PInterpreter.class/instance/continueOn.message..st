continuations
continueOn: class message: message
	| saveContext result aBlock |
	saveContext := context.
	aBlock := message at: 1.
	result := PContinue
		on:
			[ :metaCont | 
			message selector: #value:.
			message at: 1 put: metaCont.
			self send: message to: aBlock ].
	context := saveContext.
	^ result