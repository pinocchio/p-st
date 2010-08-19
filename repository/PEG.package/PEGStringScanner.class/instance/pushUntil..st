matching
pushUntil: char
	| s |
	s := collection indexOf: char startingAt: position + 1 ifAbsent: [ collection size + 1 ].
	s := s - 1.
	stack push: collection from: position to: s.
	position := s