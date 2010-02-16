test-class
testSuperClassSuperSend
	| instance |
	instance := ChildClassTestClass basicNew.
	self assert: instance testSuper = 100