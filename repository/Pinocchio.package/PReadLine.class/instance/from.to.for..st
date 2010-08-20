initialize-release
from: in to: out for: c
	text := PText new.
	vterm := PVTermInputDriver new
					input: in;
					handler: self.
	output := out.
	client := c.