*Pinocchio
removeFromTestHistory: aSelector in: aTestCaseClass
	| lastRun |
	
	lastRun := self historyFor: aTestCaseClass.
	(Array with: #passed with: #failures with:#errors) do:
		[ :set | (lastRun at: set) remove: aSelector ifAbsent: []].
