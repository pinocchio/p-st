interpreting
visitSuper: aSuper
	| receiver message |
	receiver := self currentSelf.
	message := PMessage new: aSuper size.
	message selector: aSuper message.
	aSuper withIndexDo: [ :arg :index | message at: index put: (arg accept: self) ].
	^ self
		send: message
		to: receiver
		class: self currentClass superclass
		for: aSuper