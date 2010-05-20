visitor
visitSlot: aSlot
	aSlot uid
		ifNil:
			[ aSlot uid: 'instvar_' , currentClass name asString , '_' , aSlot name.
			globals add: aSlot ].
	self
		putRaw: aSlot
		with: 'new_Slot_Slot(' , aSlot index asString , ', L"' , aSlot name , '")'