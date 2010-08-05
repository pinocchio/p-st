as yet unclassified
writeTestFor: aDictClass elements: elements
	<preventExport>
	| d r o index s results |
	r := PHamersleySequence with: elements.
	d := aDictClass new: elements.
	o := Object new.
	results := OrderedCollection new.
	s := Time primMillisecondClock.
	1 to: 20 do: [ :testCount | 
			1 to: elements do: [ :count | d at: (r nextInt: elements) put: count ]. ].
	^ (Time primMillisecondClock - s) / 20.0