exporting
exportClasses
	| done |
	done := 0.
	self sortedClasses
		do:
			[ :pClass | 
			self exportClass: pClass.
			progress := done / self sortedClasses size.
			done := done + 1 ].
	self comment: 'Class References ============================================================'.
	self exportClassReferences: self classReferences