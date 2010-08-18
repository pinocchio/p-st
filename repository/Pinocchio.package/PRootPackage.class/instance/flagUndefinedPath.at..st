accessing
flagUndefinedPath: aPath at: index
	^ PUndefinedPathReference new
		path: aPath;
		index: index;
		signal