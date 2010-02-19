convenience
clear
	stream := WriteStream on: (String new: 1000000).
	globals := OrderedCollection new.
	visitedNodes := IdentitySet new.