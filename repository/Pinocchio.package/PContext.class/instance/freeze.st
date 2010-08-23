freezing
freeze
	| clone |
	clone := self species new.
	returnContext ifNotNil: [ clone returnContext: returnContext freeze ].
	clone closure: closure.
	^ clone