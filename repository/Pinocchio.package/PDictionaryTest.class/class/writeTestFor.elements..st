as yet unclassified
writeTestFor: aDictClass elements: elements
	<preventExport>
	| d r o index s results |
	r := Random new.
	d := aDictClass new: elements.
	o := Object new.
	results := OrderedCollection new.
	1 to: 16 do:
			[ :testCount | 
			s := Time primMillisecondClock.
			1 to: elements do: [ :count | d at: r nextValue put: count ].
			results add: Time primMillisecondClock - s ].
	^ results average asFloat