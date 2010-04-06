accessing
pinstVarAt: index put: value
	<renameExport: #instVarAt:put:>
	^ (self class layout at: index) assign: value on: self