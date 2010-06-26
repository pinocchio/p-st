initialization
initialize
	super initialize.
	parsers := PDictionary new.
	stream := WriteStream on: ''.
	stack := PEGStack new.
	id := 0.