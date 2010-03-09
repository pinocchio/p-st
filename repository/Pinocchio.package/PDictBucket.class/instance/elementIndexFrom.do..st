enumeration
elementIndexFrom: from do: aBlock
	|index element|
	index := from.
	[index <= bucketSize] whileTrue: [
		element := self at: index.
		aBlock value: element value: index.
		index := index + 2.
	].
	