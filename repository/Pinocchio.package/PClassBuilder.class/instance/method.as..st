accessing
method: selector as: block
	methods at: selector ifPresent: [ ^ self raiseDuplicateMethod: selector ].
	methods at: selector put: block