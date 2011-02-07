as yet unclassified
from: in to: out for: c
	text := PHistoryText new.
	vterm := PVTermInputDriver new
					input: in;
					handler: self.
	output := out.
	client := c.