convenience
extractTestMethodsFromClass: aTestClass
	aTestClass = TestCase ifTrue: [ ^ self.].
	methods addAll: (aTestClass methodDict keys select: [ :m|
		m beginsWith: 'test'.
	]).
	aTestClass shouldInheritSelectors ifTrue: [
		self extractTestMethodsFromClass: aTestClass superclass.
	].