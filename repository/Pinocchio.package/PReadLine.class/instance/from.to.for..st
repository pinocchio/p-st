initialize-release
from: in to: out for: c
	buffer := PDoubleLinkedList new.
	vterm := PVTermInputDriver new readline: self.
	stream := PWriteStream on: (String new: 1024).
	input := in.
	output := out.
	client := c.
	out insertMode.