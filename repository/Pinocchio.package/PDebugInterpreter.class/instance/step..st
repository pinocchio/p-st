stepping
step: action
	| input |
	input := self shell.
	
	input = 's' ifTrue: [ ^ action value ].
	input = 'o' ifTrue: [ |oldBlock result| 
		oldBlock := stepBlock.
		stepBlock := self class skipStepBlock.
		result := action value.
		stepBlock := oldBlock.
		^ result.
	]