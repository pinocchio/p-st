testing
testDictionaryAtWhenAbsent
	| d r |
	d := Dictionary new.
	r := d at: 'a' ifAbsent: nil.
	r should be isNil.
	r := d at: 4 ifAbsent: nil.
	r should be isNil.
	r := d at: d ifAbsent: nil.
	r should be isNil.