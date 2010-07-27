initialization
initialize
	super initialize.
	parsers := PDictionary new.
	stream := WriteStream on: (String new: 1024).
	id := 0.