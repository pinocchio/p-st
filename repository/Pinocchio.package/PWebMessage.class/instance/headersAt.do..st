headers
headersAt: aKey do: aBlock
	"Evaluate aBlock with all the headers matching aKey"

	self headersDo:[:key :value|
		(aKey asLowercase = key asLowercase) ifTrue:[ aBlock value: value].
	].