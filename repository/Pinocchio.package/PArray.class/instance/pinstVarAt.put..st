accessing
pinstVarAt: index put: value
	<renameExport: #instVarAt:put:>
	<pinocchioPrimitive: #instVarAt:put: module: #'Collection.Array'>
	self pinocchioPrimitiveFailed