visitor
visitSlot: aSlot
	globals add: aSlot.
	aSlot name = #captured ifTrue: [ self halt ].
	self
		putRaw: aSlot
		with: 'new_Slot_Slot(' , aSlot index asString , ', L"' , aSlot name , '")'