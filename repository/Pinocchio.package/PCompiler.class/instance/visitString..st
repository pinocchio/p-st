visitor
visitString: anASTString 
	^ PConstant new: anASTString asString
