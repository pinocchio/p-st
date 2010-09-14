headers
headerAt: key put: value
	"Sets the value of a header, adding if necessary"

	headers do:[:assoc|
		(assoc key asLowercase = key asLowercase) ifTrue:[
			assoc value: value.
			^self
		].
	].
	self addHeader: key value: value.