enumerating
collect: aBlock 
	| newCollection |
	newCollection := Array new: (self size).
	mark + 1 to: position do: [ :i | newCollection at: (i - mark) put: (aBlock value: (array at: i)) ].
	^ newCollection