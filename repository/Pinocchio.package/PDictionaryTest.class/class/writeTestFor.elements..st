as yet unclassified
writeTestFor: aDictClass elements: elements
	<preventExport>
	| d r o index s results |
	r := HamersleySequence with: 10001.
	d := aDictClass new: elements.
	o := Object new.
	results := OrderedCollection new.
	s := Time primMillisecondClock.
	1 to: 20 do: [ :testCount | 
			1 to: elements do: [ :count | d at: r nextValue put: count ]. ].
	^ (Time primMillisecondClock - s) / 20.0