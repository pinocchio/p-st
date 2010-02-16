initialization
on: aString separator: aSeparator
	super on: aString.
	separator := aSeparator.
	cache := Array new: (aString size + 1).