accessing
canReadAndWrite 
	^ (self mode = #'rw') or: [self mode = #'r+' ]