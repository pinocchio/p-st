exceptions
ensure: aBlock
	self on: PObject do: [ :ex | aBlock value. ^ ex signal ].
	aBlock value.