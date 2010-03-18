expecting
= expected
	"value isNumber
		ifTrue: [ value asString stdout; cr ]
		ifFalse: [ value yourself ]."
	| aResult |
	aResult := value = expected.
	bool ifFalse: [ aResult := aResult not ].
	aResult ifFalse: [
		PFile stderr write: 27 asCharacter.
		PFile stderr << '[31m'
			<< ('Expected: ', value asString, ' but got: ', expected asString).
		PFile stderr write: 27 asCharacter.
		PFile stderr << '[0m'.
		PFile stderr lf.
	].
	self expect: value = expected.
	^ nil