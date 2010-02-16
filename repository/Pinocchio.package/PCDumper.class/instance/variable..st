convenience
variable: anASTNode
	stream nextPutAll: anASTNode astType;
		nextPutAll: '_';
		nextPutAll: anASTNode astName;
		nextPutAll: anASTNode uid.