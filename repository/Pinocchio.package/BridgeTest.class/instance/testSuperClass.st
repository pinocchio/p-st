test-class
testSuperClass
	| instance |
	instance := ChildClassTestClass basicNew.
	instance a: 1.
	self assert: instance a = 1.
	self assert: instance b = nil.
	instance b: 2.
	self assert: instance a = 1.
	self assert: instance b = 2