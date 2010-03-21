instance creation
pbasicNew: sizeRequested
	<renameExport: #basicNew:>
	<pinocchioPrimitive: #basicNew: module: #'Type.Object'>
	self pinocchioPrimitiveFailed