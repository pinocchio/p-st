initialize-release
runWith: anInterpreter
	scope := PDictionary new.
	exceptions := OrderedCollection new.
	input := PFile stdin.
	output := PVTermOutputDriver stdout.
	error := PVTermOutputDriver stderr.
	self shell.