as yet unclassified
contents
	stream reset.
	lines do: [ :line |
		line do: [ :c | stream << c ].
		stream << PCharacter lf ].
	^ stream contents