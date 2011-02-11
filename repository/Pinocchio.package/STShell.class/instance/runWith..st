as yet unclassified
runWith: anInterpreter
	| stdOut stdErr |
	scope := PDictionary new.
	exceptions := OrderedCollection new.
	history := PDoubleLinkedList new.
	input :=  OSProcess thisOSProcess stdIn.
	stdOut := OSProcess thisOSProcess stdOut.
	output := STVTermOutputDriver with: stdOut.
	stdErr := OSProcess thisOSProcess stdErr.
	error := STVTermOutputDriver with: stdErr.
	self shell.