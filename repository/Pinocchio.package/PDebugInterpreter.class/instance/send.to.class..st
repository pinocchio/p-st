sending
send: aMessage to: receiver class: class
	^ self
		checkStep: receiver
		message: aMessage
		do:
			[ super
				send: aMessage
				to: receiver
				class: class ]