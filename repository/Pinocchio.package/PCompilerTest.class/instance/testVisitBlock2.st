running
testVisitBlock2
	| emptyblock variable result send |
	parser := scparser block.
	variable := ASTVariable new name: #element.
	result := self ast: '[:element || a b | true ifTrue: [ a] ifFalse: [b]]'.
	result class should = PBlock.
	result locals size should = 2.
	result params size should = 1.
	result size should = 1.
	send := result first.
	send class should = PSend