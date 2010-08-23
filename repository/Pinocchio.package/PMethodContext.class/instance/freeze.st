freezing
freeze
	| clone |
	clone := super freeze.
	clone receiver: receiver.
	^ clone