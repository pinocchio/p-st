accessing
accept: code
	(actions
		at: code
		ifAbsent: [ self warn: self inspectName, ' does not accept: ', code ]
	) value