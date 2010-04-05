instance creation
pbasicNew: size
	<renameExport: #basicNew:>
	<pPrimitive: #basicNew: plugin: #'Type.String'>
	self pinocchioPrimitiveFailed