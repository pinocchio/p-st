accessing
on: errorClass do: aBlock
	| previousExceptionHandler result |
	previousExceptionHandler := PException handler.
	result := PContinue on: [ :return | |error|
		error := PContinue on: [ :escape |
			PException handler: escape.
			return escape: self value ].
		PException handler: previousExceptionHandler.
		(error isKindOf: errorClass) ifTrue:  [ self warn: ( 'Got', error class aString ). ^ aBlock value: error ].
		previousExceptionHandler escape: error
	].
	PException handler: previousExceptionHandler.
	^ result