initialize-release
runWith: anInterpreter
	scope := PDictionary new.
	exceptions := OrderedCollection new.
	input := PFile stdin.
	output := PVTermOutputDriver stdout.
	error := PVTermOutputDriver stderr.
	self class compile: 'demoImport self package import: Interpretation. self package import: Demo'.
	self demoImport.
	self shell.