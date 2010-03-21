interpreting
visitSuper: aSuper
	| receiver message |
	receiver := self currentSelf.
	message := PMessage new: aSuper size.
	message selector: aSuper selector.
	aSuper withIndexDo: [ :arg :index | message at: index put: (arg visit: self) ].
	^ self send: message to: receiver class: self currentClass super for: aSuper.