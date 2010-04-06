aliasing
asAliased
	| context |
	context := super asAliased.
	context homeContext: homeContext asAliased.
	context outerScope: outerScope.
	^ context