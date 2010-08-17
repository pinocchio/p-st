private
ready
	ready := true.
	self distanceToBottom timesRepeat: [ self down ].
	output lf.