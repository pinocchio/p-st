convenience
shortcutSClass: sclass
	sclass = ProtoObject ifTrue: [ ^ nil ].
	sclass = ClassDescription ifTrue: [ ^ Behavior ].
	^ sclass