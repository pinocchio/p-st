as yet unclassified
setUp
	super setUp.
	dict := SmallDictionary new: self dictSize.
	1 to: self dictSize do: [ :i|
			dict at: (self key: i) put: (self value: i)].