initialization
initialize
	super initialize.
	separator := self class separator.
	semantics := [ :result | result asArray ]