initialization
initialize: aTerminal
	terminal := aTerminal.
	aTerminal isNil ifTrue: [ self halt.].