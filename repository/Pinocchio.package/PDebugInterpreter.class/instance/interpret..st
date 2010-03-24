shelling
interpret: code
	code = 'n' ifTrue: [ ^ escapeShell value. ].
	^ nil perform: (self compile: code) selector.