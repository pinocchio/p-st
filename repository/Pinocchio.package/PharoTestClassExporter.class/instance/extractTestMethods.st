convenience
extractTestMethods
	methods := PIdentitySet new.
	self extractTestMethodsFromClass: self sclass.