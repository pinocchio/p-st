*PEG
asPEG
	self size = 1 ifTrue: [ ^ (self at: 1) asPEG ].
	^ PEGTerminal on: self