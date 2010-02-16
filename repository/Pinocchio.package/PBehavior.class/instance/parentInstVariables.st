accessing
parentInstVariables
	|instVars |
	instVars := OrderedCollection new.
	self hasSuperclass ifTrue: [
		instVars addAll: self superclass layout.
	] ifFalse: [ 
		"Transcript show: self sclass name, ' superclass was nil'; cr "
	].
	^ instVars