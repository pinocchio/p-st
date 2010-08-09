converting
asPEGChoice
	| result |
	result := PEGOrderedChoiceExpression new.
	self do: [ :char | result <= char asPEG ].
	^ result