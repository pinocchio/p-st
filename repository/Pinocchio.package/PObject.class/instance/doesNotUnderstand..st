error handling
doesNotUnderstand: message
	^ PDoesNotUnderstand new
		message: message;
		receiver: self;
		signal
		