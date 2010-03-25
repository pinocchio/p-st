as yet unclassified
includesKeyTestFor: aDictClass elements: elements reads: reads
	<preventExport>
	| d r o index s results |
	r := Random new.
	d := aDictClass new.
	o := Object new.
	results := OrderedCollection new.
	1 to: 200 do:
			[ :testCount | 
			1 to: elements do: [ :count | d at: count put: count ].
			s := Time primMillisecondClock.
			1 to: reads do: [ :count | d includesKey: (r nextInt: elements) ].
			results add: Time primMillisecondClock - s ].
	^ results average asFloat