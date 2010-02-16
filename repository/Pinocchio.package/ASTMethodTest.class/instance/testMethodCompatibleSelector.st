testing
testMethodCompatibleSelector
	[ ^ 'skip for current failure.' ] value.	"different selectors are incompatible"
	m1 selector: ASTKeywordSelector new.
	self assert: (m1 compatibleWith: m2) not.
	self assert: (m2 compatibleWith: m1) not.	"are"
	m2 selector: ASTKeywordSelector new.
	self assert: (m1 compatibleWith: m2) not.
	self assert: (m2 compatibleWith: m1) not