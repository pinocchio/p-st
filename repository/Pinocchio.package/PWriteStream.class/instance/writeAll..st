writing
writeAll: aCollection
 	| newEnd |
 	newEnd := position + aCollection size.
 	newEnd > writeLimit ifTrue: [self growTo: newEnd].
 	collection replaceFrom: position+1 to: newEnd  with: aCollection startingAt: 1.
 	position := newEnd.
	
	^ aCollection