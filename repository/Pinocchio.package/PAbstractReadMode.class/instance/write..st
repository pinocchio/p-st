accessing
write: code
	self warn: 'Trying to write: ', code, ' in ', self class name.
	self halt.