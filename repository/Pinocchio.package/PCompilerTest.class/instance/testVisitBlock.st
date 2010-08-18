running
testVisitBlock
	| emptyblock variable result |
	parser := scparser block.
	emptyblock := (ASTBlock new)
		statements: (Array new: 0);
		parameters: (Array new: 0);
		temporaries: (Array new: 0).
	result := visitor visit: emptyblock.
	result class should = PBlock.
	variable := ASTVariable new name: #element.
	result := self ast: '[:element || temp | element := 1.]'.
	result class should = PBlock.
	result params first name should = #element.
	result locals first class should = PVariable.
	result locals first name should = #temp.
	result first class should = PAssign.
	result first variable class should = PVariable.
	result first variable name should = #element.
	result first variable should == result params first