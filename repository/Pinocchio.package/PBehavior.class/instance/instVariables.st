accessing
instVariables
	<preventExport>
	| instVar |
	layout ifNotNil: [ :l | ^ l ].
	layout := self parentSlots.
	self pInstVarNames
		do: [ :each | 
			layout
				do: [ :var | 
					var name = each
						ifTrue: [ self error: 'Double Declaration of "' , each , '"' ] ].
			instVar := self createSlot: each.
			instVar index: layout size.
			layout add: instVar ].
	^ layout