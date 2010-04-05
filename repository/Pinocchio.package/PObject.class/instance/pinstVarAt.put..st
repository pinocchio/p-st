accessing
pinstVarAt: index put: value
	<renameExport: #instVarAt:put:>
	<pPrimitive: #instVarAt:put: plugin: #'Type.Object'>
	self pinocchioPrimitiveFailed