instance creation
pbasicNew: sizeRequested
	<renameExport: #basicNew:>
	<pPrimitive: #basicNew: plugin: #'Type.Object'>
	self pinocchioPrimitiveFailed