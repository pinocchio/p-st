instance creation
basicSeparators
	separators ifNil: [ separators := (String space, String tab, String cr, String lf) asPEGChoice ].
	^ separators	