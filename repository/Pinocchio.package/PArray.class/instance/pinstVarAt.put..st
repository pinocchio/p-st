accessing
pinstVarAt: index put: value
	<renameExport: #instVarAt:put:>
	<pPrimitive: #instVarAt:put: plugin: #'Collection.Array'>
	self pinocchioPrimitiveFailed