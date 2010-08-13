as yet unclassified
removeKeyTestFor: aDictClass elements: elements removes: removes
	<preventExport>
	| d r o index s results |
	r := Random new.
	d := aDictClass new.
	o := Object new.
	results := OrderedCollection new.
	1 to: 10 do:
			[ :testCount | 
			1 to: elements do: [ :count | d at: count put: count ].
			s := Time primMillisecondClock.
			1 to: removes do:
					[ :count | 
					index := r nextInt: elements.
					d removeKey: index ifAbsent: [  ] ].
			results add: Time primMillisecondClock - s ].
	^ results average asFloat