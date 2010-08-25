extracting
ensurePackageFor: sclass
	| path |
	path := sclass splitCategory.
	Transcript show: path; cr.
	^ root ensurePath: path