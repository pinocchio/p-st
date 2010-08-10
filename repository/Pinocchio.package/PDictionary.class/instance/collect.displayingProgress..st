inspecting
collect: aBlock displayingProgress: aString
	<preventExport>
	"Evaluate aBlock with each of my values as the argument.  Collect the
	resulting values into a collection that is like me. Answer with the new
	collection."
	| newCollection |
	newCollection := Dictionary new.
	(self keysAndValuesDo:[:key :value |
		newCollection at: key put: (aBlock value: value).
	]).
	^newCollection