as yet unclassified
resumeNext
	threads isEmpty ifTrue: [ PMainInterpreter quit ].
	^ threads removeLast resume