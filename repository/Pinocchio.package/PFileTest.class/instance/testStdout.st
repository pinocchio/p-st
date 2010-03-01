as yet unclassified
testStdout
	| theSnowman theHammerAndSickle |
	self preventRun: [ ^ self].
	PFile stdout write: $1.
	PFile stdout writeAll: 'This is an output test'.
	
	PFile stdout write: $x.
	
	theSnowman := 9731 asCharacter.
	PFile stdout write: theSnowman. 
	
	PFile stdout write: $x.
	
	theHammerAndSickle := 9773 asCharacter.
	PFile stdout write: theHammerAndSickle. 
	
	PFile stdout write: $x.
	'' cr.