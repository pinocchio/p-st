tests
testClassSideLayout
	| childClass parentClass child parent |
	child := self exportClass: ChildClassTestClass.
	parent := self exportClass: SuperClassTestClass.