accessing
slotAt: name ifAbsent: block
	| result |
	self halt.
	result := block value.
	result ifNil: [
		name first isUppercase ifFalse: [ 
			^ self homeContext nextSlot.
		].
	].
	^ result