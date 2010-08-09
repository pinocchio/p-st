primitives
receive
	| aString size |
	aString := String new: 200.
	self warn: ( 'String size -> ', aString size).
	size := self receiveInto: aString .
	self warn: ( 'Size returned -> ', size).
	^ aString copyFrom: 1 to: size.
	"^ self receive: 8000."
	