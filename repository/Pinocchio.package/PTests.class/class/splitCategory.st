as yet unclassified
splitCategory
	<preventExport>
	| splitcategory |
	splitcategory := super splitCategory.
	splitcategory isEmpty ifTrue: [ ^ splitcategory ].
	(splitcategory first = 'Pinocchio') ifTrue: [ splitcategory removeFirst. ].
	^ splitcategory