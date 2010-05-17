accessing
method: selector as: closure
	methods at: selector ifPresent: [ ^ self raiseDuplicateMethod: selector ].
	methods at: selector put: closure