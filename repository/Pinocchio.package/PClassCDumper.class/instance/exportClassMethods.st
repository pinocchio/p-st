exporting
exportClassMethods
	| oldClass |
	oldClass := currentClass.
	currentClass := currentClass pmetaclass.
	currentClass methods do: [ :each | self visit: each ].
	currentClass := oldClass