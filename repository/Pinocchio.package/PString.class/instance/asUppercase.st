converting
asUppercase
	"Return a uppercase copy"

	| cap |
	self isEmpty
		ifTrue: [ ^ self copy ].
	cap := self copy.
	1 to: cap size do: [ :i | cap at: i put: (cap at: i) asUppercase ].
	^ cap