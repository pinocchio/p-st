expecting-change
change: aBlock 
	| before after |
	before := aBlock value.
	value value.
	after := aBlock value.
	before should not = after.	