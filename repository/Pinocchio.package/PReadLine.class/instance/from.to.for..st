initialize-release
from: in to: out for: c
	buffer := PDoubleLinkedList new.
	escape := PC1EscapeMode new readline: self.
	read := PReadMode new readline: self.
	mode := read.
	input := in.
	output := out.
	client := c.