accessing
slotAt: name ifAbsent: block
	"Avoid class names"
	name first isUppercase ifTrue: [ ^ block value]. 
	^ PRootScope lookupNamed: name ifAbsent: [
		scope at: name ifAbsent:  [ 
			scope at: name put: (PDirectVariable named: name) ]].