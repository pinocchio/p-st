readline
historyNext
	self history next.
	self history atEnd ifTrue: [ ^ nil ].
	^ self history value.