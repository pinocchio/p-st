interpretation
interpretFile: filename
	self interpret: (PReadFile readAllFrom: filename)