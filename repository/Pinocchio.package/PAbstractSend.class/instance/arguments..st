accessing
arguments: anObject
	1 to: anObject size do: [ :i | self at: i put: (anObject at: i) ]