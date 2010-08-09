initialize-release
initialize
	super initialize.
	stream := WriteStream on: (String new: 1000000).
	globals := PIdentitySet new.
	fileGlobals := PIdentitySet new.
	visitedNodes := PIdentitySet new.
	progress := 0.