instance creation
basicSeparators
	" separator := nil. separators := nil "
	separators ifNil: [ separators := (String space, String cr, String lf, String tab) asPEGChoice ].
	^ separators	