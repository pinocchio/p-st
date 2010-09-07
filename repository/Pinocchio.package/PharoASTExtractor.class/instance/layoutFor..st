extracting
layoutFor: aPinocchioClass
	| layout |
	aPinocchioClass sclass isFixed
		ifTrue: [ ^ PObjectLayout newFrom: aPinocchioClass instVariables ].
	aPinocchioClass sclass isVariable
		ifTrue: [ ^ PArrayLayout newFrom: aPinocchioClass instVariables ].
	aPinocchioClass sclass isBytes
		ifTrue: [ self error: 'Unsupperted layout!' ].
	aPinocchioClass sclass isBits
		ifTrue: [ self error: 'Unsupperted layout!' ].
	aPinocchioClass sclass isWeak
		ifTrue: [ self error: 'Unsupperted layout!' ].
	self error: 'Got unknown layout'