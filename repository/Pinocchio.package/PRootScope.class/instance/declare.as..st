declarations
declare: anASTVariable as: value
	decls at: anASTVariable name ifAbsent: [ 
		decls at: anASTVariable name put: value.
		^ value. 
	].
	self error: ('Double declaration for: ', anASTVariable name).