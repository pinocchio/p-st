instance creation
basicSeparator
	separator ifNil: [
		separator := self basicSeparators strongTimes.
	].
	^ separator