interpreting
visitSend: aSend
	| receiver message |
	receiver := aSend receiver accept: self.
	message := PMessage new: aSend size.
	message selector: aSend message.
	aSend withIndexDo: [ :arg :index | message at: index put: (arg accept: self) ].
	^ self send: message to: receiver class: receiver class for: aSend.