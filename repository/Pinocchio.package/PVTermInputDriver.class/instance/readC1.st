reading
readC1
	" C1 Control Escape mode "
	| character |
	character := readline read.
	character = $[ ifTrue: [ ^ self readCSI ].
	character = $O ifTrue: [ ^ self readSS3 ].
	readline alt: character