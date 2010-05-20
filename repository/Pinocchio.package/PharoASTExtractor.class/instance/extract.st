extracting
extract
	| clsReference |
	progress := 0.
	todo addAll: P exportBasicClasses.
	[ todo isEmpty ] whileFalse: [ clsReference := self transformNext ].
	(pcompiler rootScope decls anySatisfy: [ :each | each pclass isNil ]) should be false.
	(done select: [ :each | (each package at: each name) pclass isNil ]) isEmpty should be true.
	^ root