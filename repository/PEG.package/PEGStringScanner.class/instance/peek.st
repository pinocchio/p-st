accessing
peek
	"Answer what would be returned if the message next were sent to the 
	receiver. If the receiver is at the end, answer nil."
	| nextObject |
	position >= readLimit ifTrue: [^nil].
	^ collection at: position + 1