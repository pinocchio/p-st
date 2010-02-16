test-class
testClassSideSuperSend
	ChildClassTestClass a: nil.
	ChildClassTestClass b: nil.
	ChildClassTestClass c: nil.
	
	self assert: ChildClassTestClass a = nil.
	self assert: ChildClassTestClass b = nil.
	self assert: ChildClassTestClass c = nil.
	
	ChildClassTestClass a: 1.
	ChildClassTestClass b: 2.
	ChildClassTestClass c: 3.
	
	self assert: ChildClassTestClass a = 1.
	self assert: ChildClassTestClass b = 2.
	self assert: ChildClassTestClass c = 3.