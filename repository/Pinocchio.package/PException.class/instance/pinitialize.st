initialize-release
pinitialize 
	<renameExport: #initialize>
	super initialize.
	environment := [] context freeze.