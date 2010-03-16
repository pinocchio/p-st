accessing
removeKey: aKey ifAbsent: aBlock 
	| keyIndex value |
	keyIndex := self keyIndex: aKey ifAbsent: [ ^ aBlock value].
	value := self at: keyIndex + 1.
	self removeAt: keyIndex.
	^ value.