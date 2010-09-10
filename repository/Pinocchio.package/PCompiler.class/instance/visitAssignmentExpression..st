visitor
visitAssignmentExpression: anAssignmentExpression
	| assign |
	assign :=  PAssign new
		variable: (anAssignmentExpression variable accept: self);
		expression: (anAssignmentExpression expression accept: self).
	assign variable should not = nil.
	assign expression should not = nil.
	^ assign.