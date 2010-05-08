exporting
splitCategory
	| splitcategory |
	splitcategory := super splitCategory.
	splitcategory removeFirst.
	(splitcategory first = 'Pinocchio') ifTrue: [ self halt. ].
	^ splitcategory