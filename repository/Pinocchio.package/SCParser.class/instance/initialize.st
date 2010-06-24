initialization
initialize
	super initialize.
	parsers := PDictionary new.
	stream := WriteStream on: ''.
	id := 0