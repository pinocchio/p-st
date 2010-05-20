initialize-release
as: closure
	| metaclass class builder path package |
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
	path := $. split: name.
	class name: path removeLast.
	(path size > 0)
		ifTrue: [ package := superclass package ensurePath: path ]
		ifFalse: [ package := superclass package ].
	package ensureClassReferenceFor: class.
	^ class