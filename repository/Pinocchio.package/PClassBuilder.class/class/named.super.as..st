instance creation
named: name super: aClass as: block
	^ self new
		name: name;
		superclass: aClass;
		as: block