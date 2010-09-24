pinocchio-export
assert: bool
	^ bool ifFalse: [ PAssertionFailure new signal ]