accessing
lookup: anASTVariable
	^ declarations at: anASTVariable name ifAbsent: [ self parentScope lookup: anASTVariable ]