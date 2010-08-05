expecting
doesNotUnderstand: message
	^ self check: (value perform: message selector withArguments: message asArray) ifFail: [ ' ', message ]