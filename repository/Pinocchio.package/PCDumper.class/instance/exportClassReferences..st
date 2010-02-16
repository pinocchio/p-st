exporting
exportClassReferences: classReferences
	classReferences do: [ :classReference|
		self exportClassReference: classReference.
	].