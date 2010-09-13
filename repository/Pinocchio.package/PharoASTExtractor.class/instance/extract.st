extracting
extract
	progress := 0. 
	todo addAll: P exportBasicClasses.
	[ todo isEmpty ] whileFalse: [ self transformNext ].
	(done select: [ :each | (each package at: each name) pclass isNil ]) isEmpty should be true.
	^ root