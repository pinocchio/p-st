accessing
slotAt: name ifAbsent: block
	"Avoid class names"
	name first isUppercase ifFalse: [ 
		self warn: ('slotAt: ', name,' ifAbsent: block').
		^ scope at: name ifAbsent:  [ 
			self warn: '        absent'.
			scope at: name put: (PDirectVariable named: name) ].
	].
	^ block value.