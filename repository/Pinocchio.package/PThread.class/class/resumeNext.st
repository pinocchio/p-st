as yet unclassified
resumeNext
	| t |
	threads isEmpty ifTrue: [ PMainInterpreter quit ].
	t := threads removeLast.
	"self warn: ( 'Resume thread ', t hash )."
	t resume