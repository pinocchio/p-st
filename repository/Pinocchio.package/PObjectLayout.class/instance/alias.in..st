aliasing
alias: anObject in: aContext
	| clone |
	clone := anObject species new.
	self aliasChildrenFrom: anObject to: clone in: aContext.
	^ super alias: clone in: aContext