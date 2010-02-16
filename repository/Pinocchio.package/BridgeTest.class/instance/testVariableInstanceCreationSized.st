test-class
testVariableInstanceCreationSized
	| instance |
	instance := StandardVariableTestClass basicNew: 100.
	instance at: 1 put: 1.
	instance at: 100 put: 100.
	self assert: (instance at: 1) = 1.	"sample"
	self assert: (instance at: 100) = 100.
	instance
		a: 1;
		b: 2;
		c: 3.
	self assert: instance a = 1.
	self assert: instance b = 2.
	self assert: instance c = 3.
	^ instance a + instance b + instance c + (instance at: 1) + (instance at: 100)