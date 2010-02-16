accessing
instVariables
	| instVarNames instVars instVar |
	instVars := self parentInstVariables.

	self pInstVarNames do: [ :each |
		instVars do: [ :var|
			var name = each ifTrue: [
				self error: 'Double Declaration of "', each, '"'
			].
		].
		instVar := self createInstVariable: each.
		instVar localId: instVars size.
		instVars add: instVar.
	].
	^ instVars.