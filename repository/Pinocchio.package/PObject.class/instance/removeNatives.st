as yet unclassified
removeNatives
	self methods do:  [ :method|
		method code clearNative	]