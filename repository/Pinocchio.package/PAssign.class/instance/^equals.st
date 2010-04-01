comparing
= anAssign
	self species = anAssign species ifFalse: [ ^ false ].
	variable = anAssign variable ifFalse: [ ^ false ].
	^ expression = anAssign expression