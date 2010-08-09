as yet unclassified
remove: anObject ifAbsent: aBlock
	1 to: bucketSize do: [ :index |
		(self at: index) == anObject
			ifTrue: [ self removeAt: index. ^ anObject ]].
	^ aBlock value