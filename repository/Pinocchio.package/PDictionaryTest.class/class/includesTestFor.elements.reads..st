as yet unclassified
includesTestFor: aDictClass elements: elements reads: reads
	<preventExport>
	| d r o index s results |
	r := Random new.
	d := aDictClass new.
	o := Object new.
	results := OrderedCollection new.
	1 to: 20 do: [ :testCount|
		1 to: elements do: [ :count|
			d at: count put: count.
		].
		s := Time primMillisecondClock.
		1 to: reads do: [ :count|
			d includes: r nextValue.
		].
		results add: (Time primMillisecondClock - s).
	].
	^ results average asFloat.