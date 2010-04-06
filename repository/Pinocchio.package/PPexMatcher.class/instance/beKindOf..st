expecting-reflection
beKindOf: aClass
	| result |
	result := (value isKindOf: aClass).
	bool ifTrue: [
		result 
			ifFalse: [
			self warn: 'Expected value of kind: ', aClass name, ' but got: ', value class name.
			self fail
		] ]
	ifFalse: [
		result 
			ifTrue: [
			self warn: 'Didn''t expect value of kind: ', aClass name, ' but got: ', value class name.
			self fail
		]]