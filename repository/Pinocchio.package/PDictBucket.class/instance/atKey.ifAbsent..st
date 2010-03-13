accessing
atKey: aKey ifAbsent: aBlock
	1 to: bucketSize by: 2 do: [ :index |
		(self at: index) = aKey ifTrue: [ ^ self at: index + 1 ]
	].
	^ aBlock value
	