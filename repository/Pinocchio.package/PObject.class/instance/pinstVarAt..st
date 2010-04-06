accessing
pinstVarAt: index
	<renameExport: #instVarAt:>
	^ (self class layout at: index) readFrom: self