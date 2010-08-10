interpretation
interpretFile: filename
	| code |
	code := PReadFile readAllFrom: filename.
	self interpret: code