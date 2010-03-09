accessing
at: key ifAbsent: aBlock
	| value |
	value := self at: key.
	value ifNil: [^ aBlock value].
	^ value.