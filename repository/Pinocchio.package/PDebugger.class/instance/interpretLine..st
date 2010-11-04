shell
interpretLine: code
	(code = 's' or: [ code = 'o' or: [ code = 'i' or: [ code = 'j']]])
		ifTrue: [ ^ escapeShell value: code ].
	code = ''
		ifTrue: [ ^ escapeShell value: 's' ].
	^ self perform: (self compile: code) selector