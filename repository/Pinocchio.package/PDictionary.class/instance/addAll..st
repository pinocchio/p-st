adding
addAll: aDictionary
	aDictionary == self ifTrue: [ ^ self ].
	aDictionary keysAndValuesDo: [:key :value | self at: key put: value].
	^ aDictionary.