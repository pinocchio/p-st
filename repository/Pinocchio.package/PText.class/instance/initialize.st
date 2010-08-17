initialization
initialize
	lines := PDoubleLinkedList new.
	stream := PWriteStream on: (String new: 1024).
	self addLine