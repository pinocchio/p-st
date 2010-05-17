initialize-release
as: closure
	| metaclass class |
	closure value: self.
	metaclass := PMetaclass slots: classSlots super: superclass class.
	class := metaclass slots: slots super: superclass.
	class name: name.
	class inspect.