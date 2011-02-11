readline
historyNext
	self history isEmpty ifTrue: [ ^ nil].
	self history next.
	^ self history value.