stepping
debugShellWithAction: action
	| input |
	input := self shell.
	input = 's'
		ifTrue: [ ^ action value ].
	input = 'o'
		ifTrue:
			[ | oldBlock result |
			oldBlock := stepBlock.
			stepBlock := self skipStepBlock.
			result := action value.
			stepBlock := oldBlock.
			^ result ].
	input = 'i'
		ifTrue:
			[ PStdInspector inspect: self currentSelf. ^ self debugShellWithAction: action ].
	input = 'j'
		ifTrue:
			[ stepBlock := self skipBlock: 2. ^ action value ]