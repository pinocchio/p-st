expecting-reflection
beKindOf: aClass
	^ self check: (value isKindOf: aClass) ifFail: [ ' value of kind: ', aClass name ]