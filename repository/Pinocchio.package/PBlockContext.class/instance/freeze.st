freezing
freeze
	| clone |
	clone := super freeze.
	clone homeContext: homeContext.
	^ clone