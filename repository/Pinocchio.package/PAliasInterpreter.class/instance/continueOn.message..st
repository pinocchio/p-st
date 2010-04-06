continuations
continueOn: class message: message
	| result |
	result := super continueOn: class message: message.
	^ PAllocationAlias new
		value: result;
		context: context