dependencies
consumeReturnValueAt: testMethod
	^(cache includesKey: testMethod)
		ifTrue: [ cache removeKey: testMethod ]
		ifFalse: [ testMethod perform: testMethod selector ]