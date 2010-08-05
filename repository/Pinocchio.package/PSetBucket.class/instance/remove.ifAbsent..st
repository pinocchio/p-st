removing
remove: anObject ifAbsent: aBlock
	| index value |
	index := self indexOf: anObject ifAbsent: [ ^ aBlock value ].
	value := self at: index.
	self removeAt: index.
	^ value