initialize-release
as: closure
	| metaclass class builder |
	closure value: self.
	builder := PMethodBuilder new.
	metaclass := PMetaclass slots: classSlots super: superclass class.
	builder host: metaclass.
	classMethods keysAndValuesDo: [ :selector :code |
		metaclass define: selector as: (builder transform: code as: selector) ].
	class := metaclass slots: slots super: superclass.
	builder host: class.
	methods keysAndValuesDo: [ :selector :code |
		class define: selector as: (builder transform: code as: selector) ].
	class name: name.
	^ class