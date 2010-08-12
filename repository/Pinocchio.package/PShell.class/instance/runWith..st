initialize-release
runWith: anInterpreter
	scope := PDictionary new.
	exceptions := OrderedCollection new.
	input := PFile stdin.
	output := PTerminal stdout.
	error := PTerminal stderr.
	self shell.