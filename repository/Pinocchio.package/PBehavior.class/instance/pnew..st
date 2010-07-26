instance creation
pnew: sizeRequested
	<renameExport: #new:>
	^ (layout instantiate: self sized: sizeRequested) initialize