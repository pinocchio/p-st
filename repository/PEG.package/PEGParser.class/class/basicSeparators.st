instance creation
basicSeparators
	" separator := nil. separators := nil "
	separators ifNil: [ separators := (String space, String tab, String cr, String lf) asPEGChoice ].
	^ separators	