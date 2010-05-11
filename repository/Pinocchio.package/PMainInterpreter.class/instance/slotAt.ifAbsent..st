accessing
slotAt: name ifAbsent: block
	| result |
	result := block value.
	result ifNil: [
		name first isUppercase ifFalse: [ ^ PVariablePlaceholder for: name ].
	].
	^ result