convenience
declareClass: aPClass
	stream << 'init_'; << aPClass name asString; << '_layout();'; lf.