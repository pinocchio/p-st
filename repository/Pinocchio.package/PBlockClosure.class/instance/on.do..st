accessing
on: errorClass do: aBlock
	| previousErrorHandler result |
	previousErrorHandler := self errorHandler.
	result := PContinue on: [ :return | |error|
		error := PContinue on: [ :escape |
			self errorHandler: escape.
			return escape: self value ].
		self errorHandler: previousErrorHandler.
		(error isKindOf: errorClass) ifTrue:  [ ^ aBlock value: error ].
		previousErrorHandler escape: error
	].
	self errorHandler: previousErrorHandler.
	^ result