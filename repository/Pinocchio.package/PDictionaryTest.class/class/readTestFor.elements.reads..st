as yet unclassified
readTestFor: aDictClass elements: elements reads: reads
	<preventExport>
	| d r o index s results |
	r := HamersleySequence with: 10001.
	d := aDictClass new.
	o := Object new.
	results := OrderedCollection new.
	1 to: 10 do:
			[ :testCount | 
			1 to: elements do: [ :count | d at: count put: count ].
			s := Time primMillisecondClock.
			1 to: reads do:
					[ :count | 
					index := r nextInt: elements.
					d at: index ].
			results add: Time primMillisecondClock - s ].
	^ results average asFloat