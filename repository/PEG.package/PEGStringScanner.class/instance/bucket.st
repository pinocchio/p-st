initialization
bucket
	(cache at: position + 1) ifNotNilDo: [ :bucket | ^ bucket ].
	^ cache at: position + 1put: PIdentityDictionary new