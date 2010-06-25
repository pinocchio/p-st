matching
match: input to: stream fail: block
	child match: input to: stream fail: [ block value. ^ nil ].
	super match: input to: stream fail: [ ^ nil ]