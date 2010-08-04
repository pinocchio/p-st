initialize-release
newFrom: aCollection
	"Answer an instance of me containing the same elements as aCollection."
	| newCollection |
	newCollection := self new: aCollection size.
	newCollection addAll: aCollection.
	^ newCollection