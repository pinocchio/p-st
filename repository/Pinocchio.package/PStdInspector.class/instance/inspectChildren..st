private
inspectChildren: children
	self increaseIndent.
	super inspectChildren: children.
	self decreaseIndent.