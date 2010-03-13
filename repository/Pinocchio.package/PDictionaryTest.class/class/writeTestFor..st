as yet unclassified
writeTestFor: aDictClass
	<preventExport>
	| d r o index |
	r := Random new.
	d := aDictClass new.
	o := Object new.
	MessageTally spyOn: [
		1 to: 10000 do: [ :count|
			d at: r nextValue put: count.
		].
	]