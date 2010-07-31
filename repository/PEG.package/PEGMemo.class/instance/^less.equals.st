accessing
<= child
	parser ifNil: [ ^ parser := child asChildParser ].
	parser <= child