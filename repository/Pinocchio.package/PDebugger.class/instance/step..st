stepping
step: action
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
			[ StdInspector new inspect: self currentSelf. ^ self step: action ]