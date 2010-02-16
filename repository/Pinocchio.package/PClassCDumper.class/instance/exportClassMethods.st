exporting
exportClassMethods
	| oldClass |
	oldClass := self currentClass.
	self currentClass: self pclass pmetaclass.
	self currentClass methods do: [ :each|
		self visit: each.
	].
	self currentClass: oldClass.