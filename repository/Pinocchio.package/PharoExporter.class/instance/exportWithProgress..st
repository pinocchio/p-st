exporting
exportWithProgress: restrictionSet
	| done exportProcess |
	done := false.
	exportProcess := [ 
		self export: P tests restrict: restrictionSet.
		done := true 
	] fork.

	[ 'Carving Pinocchio'
		displayProgressAt: Display center
		from: 0
		to: 1000
		during: [ :bar | 
			[ done or: [exportProcess isTerminated]] whileFalse: [ 
				bar value: ((progress value min: 1) * 1000) rounded.
				(Delay forMilliseconds: 2) wait 
			] ] 
	] fork