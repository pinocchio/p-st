aliasing
asAliased
	| closure |
	closure := self species new.
	closure code: self code.
	closure context: (self context asAliased).
	^ PAllocationAlias new
		value: closure;
		context: self context