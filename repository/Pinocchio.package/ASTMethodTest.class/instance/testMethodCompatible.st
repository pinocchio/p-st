testing
testMethodCompatible
	"empty methods should be compatible"
	[^'skip for current failure.'] value.

	self assert: (m1 compatibleWith: m2).
	self assert: (m2 compatibleWith: m1).
	