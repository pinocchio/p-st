sending
send: aMessage to: receiver class: class inInterpreterChain: interpreters
	interpreters ifNil: [
		^ self send: aMessage to: receiver class: class ].
	^ self send:
		((PMessage new: 4)
				selector: #send:to:inInterpreterChain:;
				at: 1 put: aMessage;
				at: 2 put: receiver;
				at: 3 put: class;
				at: 4 put: interpreters next)
		to: interpreters value.