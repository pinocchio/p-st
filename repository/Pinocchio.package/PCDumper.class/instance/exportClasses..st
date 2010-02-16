exporting
exportClasses: classes
	|done|
	done := 0.
	classes do: [ :pClass|
		self exportClass: pClass.
		progress := done / classes size.
		done := done + 1.
	].