as yet unclassified
includesKeyTestFor: aDictClass elements: elements reads: reads
	<preventExport>
	| d r o index s results |
	r := PHamersleySequence with: elements.
	d := aDictClass new.
	1 to: elements do: [ :count | d at: count put: count ].
	s := Time primMillisecondClock.
	1 to: 200 do: [ :testCount | 
			1 to: reads do: [ :count | d includesKey: (r nextInt: elements) ].].
	^ (Time primMillisecondClock - s) / 200 asFloat