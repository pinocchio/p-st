initialization
bucket
	(cache at: position + 1) ifNotNilDo: [ :bucket | ^ bucket ].
	^ cache at: position + 1 put: PIdentityDictionary new