visitor
visitNumber: anASTNumber
	^ PConstant new: anASTNumber asNumber