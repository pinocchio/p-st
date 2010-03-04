interpretation
shell
	| code method statement |
	true whileTrue: [
		PFile stdout writeAll: 'Pinocchio> '.
		statement := PFile stdin readLine.
		code := 'method', Character lf asString , statement.
		method := nil class compile: code.
		PFile stdout writeAll: 'Pinocchio> '.
		nil perform: method selector.
	]