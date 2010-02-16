visitor
visitClassReference: aPClassReference
	| oldClass |
	oldClass := self currentClass.
	self currentClass: aPClassReference pclass.
	self visit: aPClassReference pclass.
	self currentClass: oldClass.
	
	globals add: aPClassReference.