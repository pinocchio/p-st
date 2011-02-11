as yet unclassified
interpret: code
	code = 'up' ifTrue: [ 
		readline up.
		"remove the added 'up' text"
		history remove.
		^  '^' ].
	code = 'down' ifTrue: [ 
		readline down.
		"remove the added 'down' text"
		history remove.
		^  'v' ].	code = '' ifTrue: [ ^ PVoid ].
	^ self evaluate: code. 