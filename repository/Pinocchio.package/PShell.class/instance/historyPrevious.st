readline
historyPrevious
	| value |
	self history atStart ifTrue: [ ^ nil ].
	value :=  self history value.
	self history previous.
	^ value.