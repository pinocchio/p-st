continuations
continueOn: aBlock
	| wcont message |
	^ PContinue on: [ :metaCont |
		wcont := PWContinue new context: context; metaCont: metaCont.
		message := PMessage new: 1.
		message selector: #value:.
		message at: 1 put: wcont.
		self send: message to: aBlock class: aBlock class
	]