reading
readSS3
	" Single-Shift 3 mode "
	| character action |
	character := readline read.
	action := ss3 at: character ifAbsent: [ self fail: character in: 'Single-Shift 3' ].
	action value