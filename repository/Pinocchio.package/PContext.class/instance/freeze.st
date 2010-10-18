freezing
freeze
	| clone |
	clone := self species new: (self size).
	clone closure: closure.
	clone returnContext: returnContext freeze.
	^ clone