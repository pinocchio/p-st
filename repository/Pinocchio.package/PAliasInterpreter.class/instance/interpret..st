interpreting
interpret: aClosure
	^ self send: (PMessage new selector: #value) to: aClosure asAliased