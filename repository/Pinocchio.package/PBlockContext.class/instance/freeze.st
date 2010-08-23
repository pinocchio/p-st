freezing
freeze
	| clone |
	clone := super freeze.
	clone rawOuterScope: outerScope.
	^ clone