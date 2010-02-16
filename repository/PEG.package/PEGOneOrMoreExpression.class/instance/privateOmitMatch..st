matching
privateOmitMatch: input
	(child omitMatch: input) ifNil: [ ^ nil ].
	^ super privateOmitMatch: input