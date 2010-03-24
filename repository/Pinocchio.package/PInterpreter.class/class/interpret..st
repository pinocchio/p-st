interpreting
interpret: aClosure
	^ self new send: (PMessage new selector: #value) to: aClosure