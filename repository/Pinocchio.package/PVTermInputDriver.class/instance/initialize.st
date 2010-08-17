initialize-release
initialize
	normal := PDictionary new.
	self initializeNormal: normal.
	ss3 := PDictionary new.
	self initializeSS3: ss3.
	csi := PDictionary new.
	self initializeCSI: csi