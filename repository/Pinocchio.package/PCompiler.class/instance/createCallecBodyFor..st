method
createCallecBodyFor: anASTMethod
	| body statements statement |
	self pushScope.
	self currentCallecVariable: (PVariable named: #return).
	body := self createBlock: anASTMethod statements size.
	body params: (PArray with: self currentCallecVariable).
	statements := anASTMethod statements.
	1 to: statements size do: [ :index |
		statement := self visit: (statements at: index).
		body at: index put: statement.
	].
	self popScope.
	^ body
	