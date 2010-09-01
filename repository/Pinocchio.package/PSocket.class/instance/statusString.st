queries
statusString
	"Return a string describing the status of this socket."

	| status |
	handle == nil ifTrue: [^ 'destroyed'].
	status := self primStatus.
	status = -1 ifTrue: [^ 'invalidSocketHandle'].
	status = 0 ifTrue: [^ 'unconnected'].
	status = 1 ifTrue: [^ 'waitingForConnection'].
	status = 2 ifTrue: [^ 'connected'].
	status = 3 ifTrue: [^ 'otherEndClosedButNotThisEnd'].
	status = 4 ifTrue: [^ 'thisEndClosedButNotOtherEnd'].
	^ 'unknown socket status'