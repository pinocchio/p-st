continuations
continueOn: aBlock
	| message saveContext result |
	saveContext := context.
	result := PContinue on: [ :metaCont |
		message := PMessage new: 1.
		message selector: #value:.
		message at: 1 put: metaCont.
		self send: message to: aBlock
	].
	context := saveContext.
	^ result