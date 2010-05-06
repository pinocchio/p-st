exporting
splitCategory
	| splitcategory |
	splitcategory := super splitCategory.
	splitcategory removeFirst.
	^ splitcategory