accessing
slotAt: name ifAbsent: block
	self warn: ('slotAt: ', name,' ifAbsent: block').
	"Avoid class names"
	name first isUppercase ifFalse: [ 
		^ scope at: name ifAbsent:  [ 
			scope at: name put: (PDirectVariable named: name) ].
	].
	^ block value.