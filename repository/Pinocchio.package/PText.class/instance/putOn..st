as yet unclassified
putOn: aStream
	lines do: [ :line| aStream << line] separatedBy: [ aStream lf ].
	^ aStream