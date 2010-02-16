method
createCallecBodyFor: anASTMethod
	| body index |
	self pushScope.
	self currentCallecVariable: (PVariable named: #return).
	"self scope declare: self currentCallecVariable as: 1."
	body := self createBlock: anASTMethod statements size.
	body params: (PArray with: self currentCallecVariable).
	index := 1.
	anASTMethod statements do: [ :each|
		body at: index put: (self visit: each).
		index := index +1.
	].
	self popScope.
	^ body
	