as yet unclassified
for: aBlock
	| thread |
	thread := self new: aBlock.
	threads add: thread.
	