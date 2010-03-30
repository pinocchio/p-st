sending
send: aMessage to: receiver class: class
	^ self
		checkStep: receiver
		class: class
		message: aMessage
		do:
			[ super
				send: aMessage
				to: receiver
				class: class ]