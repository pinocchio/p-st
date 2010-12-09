shell
interpretLine: code
	| value |
	(self validCommands includes: code) 
		ifTrue: [
			lastCommand := code.
			^ escapeShell value: code].
	code = ''
		ifTrue: [ ^ escapeShell value: lastCommand ].
	^ self interpret: code.