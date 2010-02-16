matching
privateMatch: input 
	^ PEGSucceededOptionalResult new: ((child match: input) ifNil: [ ^ PEGFailedOptionalResult ])