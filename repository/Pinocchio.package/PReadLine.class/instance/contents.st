accessing
contents
	stream reset.
	buffer do: [ :line |
		line do: [ :c | stream << c ]].
	^ stream contents