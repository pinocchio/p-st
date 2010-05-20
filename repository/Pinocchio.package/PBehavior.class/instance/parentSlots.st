accessing
parentSlots
	| instVars |
	instVars := OrderedCollection new.
	self hasSuperclass
		ifTrue: [ instVars addAll: superclass layout ]
		ifFalse: [ ].
	^ instVars