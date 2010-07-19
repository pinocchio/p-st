*Pinocchio
shouldGenerateLastStoredRunMethod
	| sameRun |
	
	(self class methodDictionary includesKey: #lastStoredRun)
		ifFalse: [^ true].
	sameRun := (Array with:#passed with:#failures with:#errors) inject: true into: 
		[ :ok :set | ok and: [(self lastRun at: set) = (self lastStoredRun at: set) ]].
	^ sameRun not
