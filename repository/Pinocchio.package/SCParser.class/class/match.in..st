*Pinocchio
match: selector in: class
	^ self instance method parse: (class methodDict at: selector) asString asString