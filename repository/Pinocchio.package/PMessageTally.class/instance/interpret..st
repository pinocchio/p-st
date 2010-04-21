as yet unclassified
interpret: aClosure
	super interpret: aClosure.
	PFile stderr: tally asString.
	PFile stderr lf.