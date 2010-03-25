running
testVisitBlockNested
	| emptyblock variable result send |
	variable := ASTVariable new name: #element.
	result := self ast: '[:element || a b | [|c| [c := a+b] ]]'.
	result class should = PBlock.
	result locals size should = 2.
	result params size should = 1.
	result size should = 1.
	result first class should = PBlock.
	result first first class should = PBlock