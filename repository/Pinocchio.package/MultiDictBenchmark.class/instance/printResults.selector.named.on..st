as yet unclassified
printResults: results selector: selector named: name on: aStream
	| runs run |
	aStream << name; tab.
	runs := (results at: selector).
	self sizes do: [ :size|
		run := runs at: size.
		aStream << run average; tab; << ' ±'; << run stdev.].
	aStream lf.