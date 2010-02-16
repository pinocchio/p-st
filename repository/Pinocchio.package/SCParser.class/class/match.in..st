*Pinocchio
match: selector in: class
	^ self new method match: (PEGStringScanner on: (class methodDict at: selector) asString asString)