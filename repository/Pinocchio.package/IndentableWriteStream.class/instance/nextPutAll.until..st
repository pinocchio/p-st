as yet unclassified
nextPutAll: aCollection until: end
	| newEnd |
	newEnd := position + end.
	newEnd > writeLimit ifTrue: [self growTo: newEnd + 10].
	collection replaceFrom: position+1 to: newEnd with: aCollection startingAt: 1.
	position := newEnd.