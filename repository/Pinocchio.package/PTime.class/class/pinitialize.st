initialize-release
pinitialize 
	<renameExport: #initialize >
	PPlugin require: #'Chronology.Time' at: 'plugin/chronology/Time.so'.
	self primInitialize