visitor
visitSlot: aSlot
	self addGlobal: aSlot.
	self putRaw: aSlot with: [ :s| 
		s << 'new_Slot(' << aSlot index asString << ', L"' << aSlot name << '")'].