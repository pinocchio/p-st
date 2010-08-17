iterating
do: elementBlock separatedBy: separatorBlock
	"Evaluate the elementBlock for all elements in the receiver,
	and evaluate the separatorBlock between."
	|link|
	size = 0 ifTrue: [ ^ self ].
	link := start.
	size - 1 timesRepeat: [
		elementBlock value: (link := link next) value.
		separatorBlock value ].
	elementBlock value: link next value