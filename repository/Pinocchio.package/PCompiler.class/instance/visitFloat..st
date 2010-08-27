visitor
visitFloat: anASTFloat
	^ PConstant new: anASTFloat asNumber