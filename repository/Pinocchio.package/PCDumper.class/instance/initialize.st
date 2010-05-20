initialize-release
initialize
	progress  := 0.
	stream := WriteStream on: (String new: 1000000).
	globals := IdentitySet new.
	packages := OrderedCollection new.
	visitedNodes := IdentitySet new.
	progress := 0.