exporting
splitCategory
	<preventExport>
	| splitcategory |
	splitcategory := super splitCategory.
	(splitcategory first = 'Pinocchio') ifTrue: [ splitcategory removeFirst. ].
	^ splitcategory