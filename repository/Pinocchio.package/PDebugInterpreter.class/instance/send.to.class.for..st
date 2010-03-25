sending
send: aMessage to: receiver class: class for: aSend
	^ self
		checkStep: receiver
		message: aMessage
		do:
			[ super
				send: aMessage
				to: receiver
				class: class
				for: aSend ]