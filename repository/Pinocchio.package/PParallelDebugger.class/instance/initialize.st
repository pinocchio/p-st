initialize-release
initialize
	super initialize.
	left := PSteppingInterpreter new.
	right := PSteppingInterpreter new.