statistics
base: aRun
	self == aRun ifTrue: [ Error signal: 'Do not set the base to the same as self'].
	base := aRun