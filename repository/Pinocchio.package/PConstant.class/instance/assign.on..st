accessing
assign: value on: object
	(PAssignmentFailure new
		constant: self;
		object: value;
		environment: object) signal