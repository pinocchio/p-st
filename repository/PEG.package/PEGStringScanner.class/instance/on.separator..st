initialization
on: aString separator: aSeparator
	super on: aString asString.
	separator := aSeparator withoutOmit.
	cache := Array new: aString size + 1.
	stack := PEGStack new.