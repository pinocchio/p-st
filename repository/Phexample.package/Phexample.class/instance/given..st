dependencies
given: anExampleName 
	self should respondTo: anExampleName.
	^ [ Given current consumeReturnValueAt: (self class selector: anExampleName) ] 
		on: Exception
		do: [ :ex | 
			givenNotGiven := true.
			ex pass ]