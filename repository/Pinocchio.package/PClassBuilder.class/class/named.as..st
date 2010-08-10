instance creation
named: className as: block
	^ self new
		name: className;
		superclass: Object;
		as: block