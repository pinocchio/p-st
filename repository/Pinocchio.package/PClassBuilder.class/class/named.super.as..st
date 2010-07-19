instance creation
named: className super: aClass as: block
	^ self new
		name: className;
		superclass: aClass;
		as: block