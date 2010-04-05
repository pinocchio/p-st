accessing
isValidMode: aModeString
	^ (aModeString = #r) or: [ aModeString = #w].