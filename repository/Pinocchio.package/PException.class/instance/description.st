PharoIntegration
description
	"Return a textual description of the exception."
	<preventExport>
	| desc mt |
	desc := self class name asString.
	^(mt := self messageText) == nil
		ifTrue: [desc]
		ifFalse: [desc, ': ', mt]