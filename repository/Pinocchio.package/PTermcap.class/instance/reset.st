initialize-release
reset
	self getent: (PEnvironment instance at: #TERM ifAbsent: [ 'dumb' ])