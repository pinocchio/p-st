shelling
interpret: code
	code = 's' ifTrue: [ ^ escapeShell value: code. ].
	code = 'o' ifTrue: [ ^ escapeShell value: code. ].
	code = '' ifTrue: [ ^ escapeShell value: 's'. ].
	^ nil perform: (self compile: code) selector.