interpreting
visitSend: aSend
	| receiver message |
	receiver := aSend receiver accept: self.
	message := PMessage new: aSend size.
	message selector: aSend selector.
	aSend withIndexDo: [ :arg :index | message at: index put: (arg visit: self) ].
	^ self send: message to: receiver for: aSend.