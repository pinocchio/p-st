aliasing
asAliased
	| context |
	context := super asAliased.
	context homeContext: context.
	context receiver: (receiver asAllocationAlias: context).
	^ context