assignment
initializeAssignmentExpressions
	^ PEGMultiParser
		named: 'ASSIGNMENT-EXPRESSIONS'
		parsing: (self variableName & self assignmentOp) plus