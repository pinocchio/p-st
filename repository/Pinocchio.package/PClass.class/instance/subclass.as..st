subclass-creation
subclass: name as: block
	^ PClassBuilder named: name super: self as: block