as yet unclassified
setUp
	super setUp.
	dict := PDictionary new: self dictSize.
	1 to: self dictSize do: [ :i|
			dict at: (self key: i) put: (self value: i)].