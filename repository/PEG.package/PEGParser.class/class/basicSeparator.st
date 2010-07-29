instance creation
basicSeparator
	" separator := nil "
	separator ifNil: [ separator := self basicSeparators strongTimes omit ].
	^ separator 