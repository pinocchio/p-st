tests
testStdout
	| theSnowman theHammerAndSickle |
	self preventRun: [ ^ self].
	PFile stdout write: $1.
	PFile stdout writeAll: 'This is an output test'.
	
	theSnowman := 9731 asCharacter.
	PFile stdout write: theSnowman. 
	
	theHammerAndSickle := 9773 asCharacter.
	PFile stdout write: theHammerAndSickle. 
	
	PFile stdout lf.