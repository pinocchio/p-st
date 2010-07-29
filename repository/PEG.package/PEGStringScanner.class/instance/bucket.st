initialization
bucket
	(cache at: position + 1) ifNotNil: [ :bucket | ^ bucket ].
	^ cache at: position + 1put: PIdentityDictionary new