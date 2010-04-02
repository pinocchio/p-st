accessing
isValidMode: aModeString
	|validModes| 
	validModes := Array with: #r with: #w with: #rw with: #'r+'.
	^ validModes includes: aModeString