exporting
exportWithProgress: restrictionSet
	| done exportProcess value |
	done := false.
	exportProcess := [ 
		self export: restrictionSet.
		done := true 
	] fork.

	[ 'Carving Pinocchio'
		displayProgressAt: Display center
		from: 0
		to: 1000
		during: [ :bar | 
			[ done or: [exportProcess isTerminated]] whileFalse: [ 
				value := progress value.
				value ifNotNil: [
					bar value: ((value min: 1) * 1000) rounded.
				].
				(Delay forMilliseconds: 50) wait 
			] ] 
	] fork.