as yet unclassified
setUp
	super setUp.
	set := PIdentitySet new: self setSize.
	1 to: self setSize do: [ :i| set add: (self value: i)].