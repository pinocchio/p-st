*Pinocchio
associationDeclareAt: aKey
	<preventExport>
	"Return an existing association, or create and return a new one.  Needed as a single message by ImageSegment.prepareToBeSaved."

	^ self associationAt: aKey ifAbsent: [| existing |
		(Undeclared includesKey: aKey)
			ifTrue: 
				[existing := Undeclared associationAt: aKey.
				Undeclared removeKey: aKey.
				self add: existing]
			ifFalse: 
				[self add: aKey -> false]].