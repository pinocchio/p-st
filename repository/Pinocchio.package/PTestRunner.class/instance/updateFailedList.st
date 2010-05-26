updating
updateFailedList
	failedList size = result failures size ifTrue: [ ^ self ].
	failedList := result failures asArray
		sort: [ :a :b | a printString <= b printString ].
	failedSelected := nil.