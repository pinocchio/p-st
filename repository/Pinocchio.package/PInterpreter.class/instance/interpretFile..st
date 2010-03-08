interpretation
interpretFile: filename
	| file code |
	file := PReadFile open: filename.
	code := file readAll.
	file close.
	self interpret: code.