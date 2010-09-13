declarations
declare: anASTVariable
	^ self declare: anASTVariable name as: (anASTVariable asVariableAt: self)