convenience
clear
	stream := WriteStream on: (String new).
	globals := OrderedCollection new.
	visitedNodes := IdentitySet new.