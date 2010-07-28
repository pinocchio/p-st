exporting
exportClassMethods
	| oldClass |
	oldClass := currentClass.
	self currentClass: currentClass pmetaclass.
	currentClass methods do: [ :each | self visit: each ].
	self currentClass: oldClass