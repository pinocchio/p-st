instance creation
pbasicNew: sizeRequested
	<renameExport: #basicNew:>
	^ layout basicInstantiate: self sized: sizeRequested