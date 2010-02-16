converting
asPEGRange
	((self size = 3) and: [ (self at: 2) = $- ])
		ifFalse: [ self error: 'Cannot convert ', self, ' to PEG range. Expected format: beginchar-endchar' ].
	^ PEGRange between: (self at: 1) and: (self at: 3)