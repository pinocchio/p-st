matching
match: input to: stream fail: block
	(input scan: string) ifFalse: [ block value. ^ nil ].
	stream pushAll: string