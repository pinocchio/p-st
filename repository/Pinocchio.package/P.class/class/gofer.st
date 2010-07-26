accessing
gofer
	| g |
	g := Gofer new.
	g
		squeaksource: 'p';
		package: 'Pinocchio';
		package: 'PEG'";
		package: 'ActiveContextP'".
	^ g