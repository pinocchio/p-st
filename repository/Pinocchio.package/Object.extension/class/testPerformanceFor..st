*Pinocchio
testPerformanceFor: aDictClass
	<preventExport>
	| d r o index |
	r := Random new.
	d := aDictClass new.
	o := Object new.
	MessageTally spyOn: [ 1 to: 100000 do: [ :count | d at: count put: count ] ].
	MessageTally spyOn: [ 1 to: 200000 do: [ :count | d at: count \\ 100000 + 1 ] ]