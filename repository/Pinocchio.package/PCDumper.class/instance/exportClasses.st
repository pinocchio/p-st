exporting
exportClasses
	| done |
	done := 0.
	sortedClasses do: [ :pClass | 
		self exportClass: pClass.
		progress := done / sortedClasses size.
		done := done + 1 
	].
	self comment: 'Class References ============================================================'.
	self exportClassReferences: classReferences