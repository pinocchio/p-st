accessing
gofer
	| g |
	g := Gofer new.
	g package: 'Pinocchio';
		package: 'PEG'.
	^ g