stepping
skipWith: action
	| oldBlock result |
	oldBlock := stepBlock.
	stepBlock := self skipStepBlock.
	result := action value.
	stepBlock := oldBlock.
	^ result