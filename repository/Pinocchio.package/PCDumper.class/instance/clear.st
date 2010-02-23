convenience
clear
	stream := WriteStream on: (String new: 1000000).
	globals := IdentitySet new.
	visitedNodes := IdentitySet new.