*PEG
asParser
	self size = 1 ifTrue: [ ^ (self at: 1) asParser ].
	^ PEGTerminal on: self