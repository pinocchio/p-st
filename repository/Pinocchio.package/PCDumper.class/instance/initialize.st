initialize-release
initialize
	super initialize.
	stream := WriteStream on: (String new: 1000000).
	globals := IdentitySet new.
	visitedNodes := IdentitySet new.
	progress := 0.