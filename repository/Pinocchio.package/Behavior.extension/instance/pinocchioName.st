*Pinocchio
pinocchioName
	<preventExport>
	(self category beginsWith: #'Pinocchio') ifFalse: [^ self name asSymbol].
	(self name at: 2) isUppercase ifFalse: [^ self name asSymbol].
	^ (self name copyFrom: 2 to: self name size) capitalized asSymbol