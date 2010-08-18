as yet unclassified
benchmark: aParser sources: aCollection
	<preventExport>
	<ignoreForCoverage>
	| start count end |
	start := Time millisecondClockValue.
	end := start + 10000.
	count := 0.
	[  aCollection do: [ :each | aParser parseMethod: each ].
	count := count + 1.
	Time millisecondClockValue < end ] whileTrue.
	end := Time millisecondClockValue.
	^ (1000 * count * (aCollection detectSum: [ :each | each size ]) 	/ (end - start)) asInteger asString , ' characters/sec'