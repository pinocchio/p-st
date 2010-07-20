as yet unclassified
receiver: rcv message: msg size: size
	| instance |
	instance := (self new: size).
	instance receiver: rcv; message: msg.
	^ instance.