stepping
debugShellWithAction: action
	| input |
	input := self shell.
	input = 's'
		ifTrue: [ ^ action value ].
	input = 'o'
		ifTrue: [ ^ self skipWith: action ].
	input = 'i'
		ifTrue: [ 
			self currentSelf inspect. 
			PVTermOutputDriver stdout lf. 
			^ self debugShellWithAction: action ].
	input = 'j'
		ifTrue:[ 
			stepBlock := self skipBlock: 2. 
			^ action value ].