expecting-change
change: aBlock from: before to: after
	aBlock value should = before.
	value value.
	aBlock value should = after.