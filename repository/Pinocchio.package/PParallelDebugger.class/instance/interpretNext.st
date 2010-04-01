interpreting
interpretNext
	| cont |
	PContinuation on: [ :aContinuation |
		continuations put: (aContinuation@context).
		continuations ifAtEnd: [
			|test|
			test := results first.
			results doRest: [ :result | result should be: test ].
			cont := continuations first.
			context := cont y.
			cont x continue.
		].
		results next.
		cont := continuations next.
		context := cont y.
		cont x continue.
	]