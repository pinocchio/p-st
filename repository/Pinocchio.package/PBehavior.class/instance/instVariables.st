accessing
instVariables
	| instVarNames instVars instVar |
	instVars := self parentSlots.
	self pInstVarNames
		do:
			[ :each | 
			instVars
				do:
					[ :var | 
					var name = each
						ifTrue: [ self error: 'Double Declaration of "' , each , '"' ] ].
			instVar := self createSlot: each.
			instVar index: instVars size.
			instVars add: instVar ].
	^ instVars