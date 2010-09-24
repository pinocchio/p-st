expecting-reflection
beKindOf: aClass
	^ self check: (value isKindOf: aClass) ifFail: [ :s |
		s << ' value of kind: '.
		aClass name printOn: s ]