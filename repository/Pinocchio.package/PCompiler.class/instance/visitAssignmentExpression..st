visitor
visitAssignmentExpression: anAssignmentExpression 
	^ PAssign new
			variable: (anAssignmentExpression variable accept: self);
			expression: (anAssignmentExpression expression accept: self)