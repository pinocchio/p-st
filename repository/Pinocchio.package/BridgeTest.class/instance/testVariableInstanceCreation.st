test-class
testVariableInstanceCreation
	| instance |
	instance := StandardVariableTestClass basicNew.
	instance
		a: 1;
		b: 2;
		c: 3.
	self assert: instance a = 1.
	self assert: instance b = 2.
	self assert: instance c = 3.
	^ instance a + instance b + instance c