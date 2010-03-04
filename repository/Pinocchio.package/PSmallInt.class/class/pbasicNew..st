instance creation
pbasicNew: anArg
	<renameExport: #basicNew:>
	self error: 'SmallIntegers can only be created by performing arithmetic'