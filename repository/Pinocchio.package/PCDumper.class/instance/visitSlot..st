visitor
visitSlot: aSlot
	globals add: aSlot.
	self
		putRaw: aSlot
		with: 'new_Slot(' , aSlot index asString , ', L"' , aSlot name , '")'