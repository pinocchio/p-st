as yet unclassified
readTestFor: aDictClass elements: elements reads: reads
	<preventExport>
	| d r o index s results |
	r := PHamersleySequence with: elements.
	d := aDictClass new.
	1 to: elements do: [ :count | d at: count put: count ].
	o := Object new.
	results := OrderedCollection new.
	s := Time primMillisecondClock.
	1 to: 20 do: [ :testCount | 
			1 to: reads do: [ :count | 
				index := r nextInt: elements.
				d at: index ]. ].
	^ (Time primMillisecondClock - s) / 20.0