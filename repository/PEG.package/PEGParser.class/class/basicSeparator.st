instance creation
basicSeparator
	separator ifNil: [ separator := self basicSeparators strongTimes omit: true ].
	^ separator " separator := nil "