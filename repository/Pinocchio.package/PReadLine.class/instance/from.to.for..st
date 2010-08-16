initialize-release
from: in to: out for: c
	buffer := PDoubleLinkedList new.
	vterm := PReadMode new readline: self.
	input := in.
	output := out.
	client := c.