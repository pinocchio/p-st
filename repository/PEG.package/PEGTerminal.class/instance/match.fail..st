matching
match: input fail: block
	(input scan: string) ifFalse: [ block value. ^ nil ]