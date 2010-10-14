sending
send: message to: receiver class: class
	^ self
		checkStep: receiver
		class: class
		message: message
		do: [ super
				send: message
				to: receiver
				class: class ]
