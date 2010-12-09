printing
printResults: results selector: selector named: name on: aStream
	| runs |
	aStream << name; tab.
	runs := (results at: selector ifAbsent: [ ^ self ]).
	self sizes do: [ :size|
		runs at: size ifPresent: [ :run|
			aStream << run average; tab; << run stdev; tab.]].
	aStream lf; lf.
