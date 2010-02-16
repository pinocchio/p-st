running
testVisitBlock
	| emptyblock variable result |
	emptyblock := ASTBlock new.
	result := visitor visit: emptyblock.
	result class should = PBlock.
	result params class should = PArray.
	result locals class should = PArray.
	
	variable := ASTVariable new name: #element.
	result := self ast: '[:element || temp | element := 1.]'.
	result class should = PBlock.
	result params class should = PArray.
	result params first class should = PLocalVariable.
	result params first name should = 'element'.
	result locals class should = PArray.
	result locals first class should = PLocalVariable.
	result locals first name should = 'temp'.
	result first class should = PAssign.
	result first variable class should = PLocalVariable.
	result first variable name should = 'element'.
	result first variable should == result params first.
