assignment
initializeAssignmentExpressions
	^ PEGMultiParser
		named: 'ASSIGNMENT'
		parsing: (self variableName & self assignmentOp) plus