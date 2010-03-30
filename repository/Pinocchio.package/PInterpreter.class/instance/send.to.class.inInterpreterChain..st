sending
send: aMessage to: receiver class: class inInterpreterChain: interpreters
	interpreters ifNil: [
		"PFile stderr: 'Sending message in ', self class name,' level: ', aMessage selector.
		PFile stderr lf. 
		StdInspector new inspect: aMessage."
		^ self send: aMessage to: receiver class: class ].
	"PFile stderr: 'Pushing to next interpreter level: ', aMessage selector.
	PFile stderr lf. "
	^ self send:
		((PMessage new: 4)
				selector: #send:to:inInterpreterChain:;
				at: 1 put: aMessage;
				at: 2 put: receiver;
				at: 3 put: class;
				at: 4 put: interpreters next)
		to: interpreters value.