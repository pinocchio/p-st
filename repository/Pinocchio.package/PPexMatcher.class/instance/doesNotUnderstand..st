expecting
doesNotUnderstand: message
	^ self check: (message sendTo: value) ifFail: [ :s | s << ' ' << message ]