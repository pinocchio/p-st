method
createCallecBodyFor: anASTMethod
	| body statements statement |
	self pushScope.
	self currentCallecVariable: (PVariable named: #return at: scope depth).
	body := self createBlock: anASTMethod statements size.
	body params: (PArray with: self currentCallecVariable) locals: PArray new.
	statements := anASTMethod statements.
	1 to: statements size do: [ :index |
		statement := self visit: (statements at: index).
		body at: index put: statement.
	].
	self popScope.
	^ body
	