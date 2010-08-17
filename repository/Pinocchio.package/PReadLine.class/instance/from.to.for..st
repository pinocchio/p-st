initialize-release
from: in to: out for: c
	text := PText new.
	vterm := PVTermInputDriver new readline: self.
	input := in.
	output := out.
	client := c.