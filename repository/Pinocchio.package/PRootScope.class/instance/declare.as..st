declarations
declare: name as: value
	declarations at: name ifAbsent: [ 
		declarations at: name put: value.
		^ value ].
	self error: 'Double declaration for: ' , name