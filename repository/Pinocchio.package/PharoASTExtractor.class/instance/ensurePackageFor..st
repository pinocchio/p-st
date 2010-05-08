extracting
ensurePackageFor: sclass
	| path |
	path := sclass splitCategory.
	^ root ensurePath: path