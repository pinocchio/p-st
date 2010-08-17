accessing
contents
	stream reset.
	lines do: [ :line |
		line do: [ :c | stream << c ]]
		separatedBy: [ stream << PCharacter lf ].
	^ stream contents