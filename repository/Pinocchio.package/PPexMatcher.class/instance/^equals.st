expecting
= expected
	"value isNumber
		ifTrue: [ value asString stdout; cr ]
		ifFalse: [ value yourself ]."
	| aResult |
	aResult := value = expected.
	bool ifFalse: [ aResult := aResult not ].
	aResult ifFalse: [
		PFile stderr write: 27 asCharacter; << '[31m';
			<< ('Expected: ', value asString, ' but got: ', expected asString); 
			write: 27 asCharacter; << '[0m'; lf.
	].
	self expect: value = expected.
	^ nil