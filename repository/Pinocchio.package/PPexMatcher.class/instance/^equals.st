expecting
= expected
	"value isNumber
		ifTrue: [ value asString stdout; cr ]
		ifFalse: [ value yourself ]."
	self expect: value = expected.
	^ nil