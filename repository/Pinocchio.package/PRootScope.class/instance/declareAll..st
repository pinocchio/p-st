declarations
declareAll: aCollection
	(aCollection isNil) ifFalse: [
		aCollection do: [ :element | self declare: element ]
	]