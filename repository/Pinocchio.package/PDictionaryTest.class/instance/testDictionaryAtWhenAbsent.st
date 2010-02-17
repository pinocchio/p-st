testing
testDictionaryAtWhenAbsent
	| d r |
	d := Dictionary new.
	r := d at: 'a' ifAbsent: nil.
	r should be isNil.
	r := d at: 4 ifAbsent: nil.
	r should be isNil.
	r := d at: true ifAbsent: nil.
	r should be isNil.