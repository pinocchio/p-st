as yet unclassified
setUp
	super setUp.
	set := PSet new: self setSize.
	1 to: self setSize do: [ :i| set add: i].