evaluation
removeNatives
	self methods do:  [ :selector :method|
		method clearNative	]