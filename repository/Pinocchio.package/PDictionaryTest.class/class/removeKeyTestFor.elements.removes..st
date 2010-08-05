as yet unclassified
removeKeyTestFor: aDictClass elements: elements removes: removes
	<preventExport>
	| d r o index s results |
	r := Random new seed: 0.
	d := aDictClass new.
	1 to: elements do: [ :count | d at: count put: count ].
	o := Object new.
	results := OrderedCollection new.
	s := Time primMillisecondClock.
	1 to: 20 do: [ :testCount | 
			1 to: removes do: [ :count | 
					index := r nextInt: elements.
					d removeKey: index ifAbsent: [  ] ] ].
	^ (Time primMillisecondClock - s) / 20.0