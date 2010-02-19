running
testClassReference
	| ast |
	parser := scparser method.
	ast := self ast: ('method', String cr, '|a|', String cr, 'a := Metaclass new.').