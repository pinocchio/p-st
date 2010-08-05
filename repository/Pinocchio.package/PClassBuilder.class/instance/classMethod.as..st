accessing
classMethod: selector as: block
	classMethods at: selector ifPresent: [ ^ self raiseDuplicateMethod: selector ].
	classMethods at: selector put: block