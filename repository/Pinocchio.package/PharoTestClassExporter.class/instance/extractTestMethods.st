convenience
extractTestMethods
	methods := self sclass methodDict keys select: [ :m|
		m beginsWith: 'test'.
	]