accessing
assign: value on: object
	(PAssignToConstant new
		constant: self;
		object: value;
		environment: object) signal