updating
updateErrorList
	errorList size = result errors size ifTrue: [ ^ self ].
	errorList := result errors asArray
		sort: [ :a :b | a printString <= b printString ].
	errorSelected := nil.